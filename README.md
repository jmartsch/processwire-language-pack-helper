# ProcessWire environment for german language pack 

This repo sets up a processwire environment which can be used for translating files 

This [environment idea](https://github.com/BernhardBaumrock/tabulator.test) is based upon work from [Bernhard Baumrock](https://github.com/BernhardBaumrock.)

Check out Bernhard's nice ProcessWire modules RockTabulator and RockFinder.
 
## Install

1) Clone this repo and update/init submodules

```
cd /your/root/folder
git clone https://github.com/jmartsch/processwire-de.git processwire-de
git submodule update --init --recursive
```

2) Restore the latest DB dump (from site/assets/backups/database/pw-lang-de.sql) either manually or with this PHP script via command line / terminal in your root directory

```
php restore.php
```

## Login

```
username = admin
password = password
```

## Translate
Go to http://pw-lang-de-new.localhost/processwire/setup/languages/edit/?id=1019

*Note:* Please make sure to use the correct host if you don't use localhost as your development domain.

* Look for abandoned and empty phrases
* abandoned are not needed any more and can safely be removed
* empty phrases are new additions, which need to be translated

## Create a pull request
Hmmmm, still not sure how to transfer only the needed files to the [pw-lang-de](https://github.com/jmartsch/pw-lang-de) repository.
Suggestions are welcome

Right now the manual steps you have to take are:

* for and clone the pw-lang-de repo
* copy the files from site/assets/files/1019 to the root dir of the pw-lang-de repo
* create a pull request so I can check and merge this