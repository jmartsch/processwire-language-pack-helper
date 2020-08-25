<?php namespace ProcessWire;
//function unzip($file) {
//  $info = (object)pathinfo($file);
//  $zip = new \ZipArchive();
//  $zip->open($file);
//
//  $dst = $info->dirname;
//  for($i = 0; $i < $zip->numFiles; $i++) {
//    $name = $zip->getNameIndex($i);
//    if(strpos($name, '..') !== false) continue;
//    $zip->extractTo($dst, $name);
//  }
//
//  $zip->close();
//}

// no need to zip and unzip so this is commented out
// unzip dump
//$path = "site/assets/backups/database/pw-lang-de";
//echo "Unzipping ZIP -> SQL...\n";
//unzip("$path.zip");
//echo "Unzip complete!\n";

/**
 * Import SQL File
 *
 * @param $pdo
 * @param $sqlFile
 * @param null $tablePrefix
 * @param null $InFilePath
 * @return bool
 */
function importSqlFile($pdo, $sqlFile, $tablePrefix = null, $InFilePath = null) {
  try {
    
    // Enable LOAD LOCAL INFILE
    $pdo->setAttribute(\PDO::MYSQL_ATTR_LOCAL_INFILE, true);
    
    $errorDetect = false;
    
    // Temporary variable, used to store current query
    $tmpLine = '';
    
    // Read in entire file
    $lines = file($sqlFile);
    $cnt = count($lines);
    
    // Loop through each line
    foreach ($lines as $i=>$line) {
      echo "Importing line $i/$cnt\n";
      // Skip it if it's a comment
      if (substr($line, 0, 2) == '--' || trim($line) == '') {
        continue;
      }
      
      // Read & replace prefix
      $line = str_replace(['<<prefix>>', '<<InFilePath>>'], [$tablePrefix, $InFilePath], $line);
      
      // Add this line to the current segment
      $tmpLine .= $line;
      
      // If it has a semicolon at the end, it's the end of the query
      if (substr(trim($line), -1, 1) == ';') {
        try {
          // Perform the Query
          $pdo->exec($tmpLine);
        } catch (\PDOException $e) {
          echo "<br><pre>Error performing Query: '<strong>" . $tmpLine . "</strong>': " . $e->getMessage() . "</pre>\n";
          $errorDetect = true;
        }
        
        // Reset temp variable to empty
        $tmpLine = '';
      }
    }
    
    // Check if error is detected
    if ($errorDetect) {
      return false;
    }
    
  } catch (\Exception $e) {
    echo "<br><pre>Exception => " . $e->getMessage() . "</pre>\n";
    return false;
  }
  
  return true;
}

function pdo() {
  define("PROCESSWIRE", 300);
  error_reporting(0);
  include("site/config.php");
  error_reporting(E_ALL);

  $driver = 'mysql';
  $host = $config->dbHost;
  $port = $config->dbPort;
  $username = $config->dbUser;
  $password = $config->dbPass;
  $database = $config->dbName;
  $options = [
    \PDO::ATTR_DEFAULT_FETCH_MODE => \PDO::FETCH_OBJ,
    \PDO::ATTR_ERRMODE            => \PDO::ERRMODE_EXCEPTION,
    \PDO::ATTR_EMULATE_PREPARES   => true,
    \PDO::ATTR_CURSOR             => \PDO::CURSOR_FWDONLY,
  ];

  // create database if it does not exist
  try {
    $dbh = new \PDO("mysql:host=$host", $username, $password);
    $dbh->exec("CREATE DATABASE IF NOT EXISTS `$database`")
      or die(print_r($dbh->errorInfo(), true));
  } catch (\PDOException $e) {
    die("DB ERROR: ". $e->getMessage());
  }
  
  try {
    $dsn = $driver . ':host=' . $host . ';port=' . $port . ';dbname=' . $database . ';charset=utf8';
    $pdo = new \PDO($dsn, $username, $password, $options);
  } catch (\PDOException $e) {
    $dsn = $driver . ':host=' . $host . ';port=' . $port . ';dbname=' . $database . ';charset=utf8';
    $pdo = new \PDO($dsn, $username, $password, $options);
  } catch (\Exception $e) {
    die("The database connection failed. ERROR: " . $e->getMessage());
  }

  try {
    $dsn = $driver . ':host=' . $host . ';port=' . $port . ';dbname=' . $database . ';charset=utf8';
    $pdo = new \PDO($dsn, $username, $password, $options);
  } catch (\PDOException $e) {
    die("Can't connect to the database server. ERROR: " . $e->getMessage());
  } catch (\Exception $e) {
    die("The database connection failed. ERROR: " . $e->getMessage());
  }
  return $pdo;
}


$filePath = 'site/assets/backups/database/pw-lang-de.sql';
$res = importSqlFile(pdo(), $filePath);
if ($res === false) die('ERROR');
echo "DB imported";
//unlink("$path.sql");
