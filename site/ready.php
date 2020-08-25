<?php namespace ProcessWire;
use Ifsnop\Mysqldump as IMysqldump;

/** @var Wire $this */


/**
 * Backup database on logout and ZIP it
 */
$this->addHookAfter("Session::logout", function(HookEvent $event) {
  $path = $this->config->paths->assets."backups/database/";
  $config = $this->wire->config;
  $sql = $path."pw-lang-de.sql";
  $zip = $path."pw-lang-de.zip";

  $this->files->unlink($sql);
  $this->files->unlink($zip);

  // create dump
  error_reporting(E_ALL);

  $dumpSettings = array(
    'compress' => IMysqldump\Mysqldump::NONE,
    'no-data' =>['caches'],
    'add-drop-table' => true,
    'single-transaction' => true,
    'lock-tables' => true,
    'add-locks' => true,
    'extended-insert' => true,
    'disable-foreign-keys-check' => true,
    'skip-triggers' => false,
    'add-drop-trigger' => true,
    'databases' => true,
    'add-drop-database' => true,
    'hex-blob' => true
  );
  $dump = new IMysqldump\Mysqldump(
    "mysql:host=".$config->dbHost.";dbname=".$config->dbName,
    $config->dbUser,
    $config->dbPass,
    $dumpSettings
  );
  $dump->start($sql);

  // zip sql file
  $this->files->zip($zip, [$sql]);
//  $this->files->unlink($sql);
});
