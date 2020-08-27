# ProcessWire environment for german language pack 

This repo sets up a processwire environment which can be used for translating files into other languages.

Right now this is the boilerplate for the german language pack.

This [environment idea](https://github.com/BernhardBaumrock/tabulator.test) is based upon work from [Bernhard Baumrock](https://github.com/BernhardBaumrock).

Check out Bernhard's nice ProcessWire modules RockTabulator and RockFinder.
 
## Installation

### Clone this repo with submodules

```bash
git clone --recurse-submodules git@github.com:jmartsch/processwire-language-pack-helper.git processwire-language-pack-helper
```

If you forgot the `--recurse-submodules` option no problem. Do this:

```bash
cd processwire-language-pack-helper
git submodule update --init --recursive
```

What this does is cloning this dev environment and then pulling in the language pack as a submodule.

## Fork the language pack so you can commit changes

Make a fork of https://github.com/jmartsch/pw-lang-de

After forking go to your command line and enter the following commands (change $yourusername and $pw-lang-de-forkname):

```bash
$ cd site/assets/files/1019
$ git remote add fork https://github.com/$yourusername>/$pw-lang-de-forkname
```

### Restore the DB dump

First change your database settings in site/config.php according to your database

Then run this PHP script via command line / terminal in your root directory:

```
php restore.php
```

or you can use the dump from site/assets/backups/database/pw-lang-de.sql with your favorite tool like PhpMyAdmin.
  
## Login

```
username = admin
password = password
```

## Translate
Go to http://processwire-language-pack-helper.localhost/processwire/setup/languages/edit/?id=1019

*Note:* Please make sure to use the correct host if you don't use localhost as your development domain.

* Look for abandoned and empty phrases
* abandoned are not needed any more and can safely be removed
* empty phrases are new additions, which need to be translated

## Commit your changes
```bash
$ cd site/assets/files/1019
$ git add .
$ git commit -m "Update translations"
$ git push fork master:master
```

## Create a pull request

Go to github and create a pull request