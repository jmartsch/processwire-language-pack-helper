# ProcessWire environment for german language pack 

This repo sets up a processwire environment which can be used for translating files into other languages.

Right now this is the boilerplate for the german language pack.

This [environment idea](https://github.com/BernhardBaumrock/tabulator.test) is based upon work from [Bernhard Baumrock](https://github.com/BernhardBaumrock).

Check out Bernhard's nice ProcessWire modules RockTabulator and RockFinder.
 
## Installation

### Clone this repo and update/init submodules

```bash
git clone --recurse-submodules git@github.com:jmartsch/processwire-language-pack-helper.git processwire-language-pack-helper
```

If you forgot the `--recurse-submodules` option no problem. Do this:

```bash
cd processwire-language-pack-helper
git submodule update --init --recursive
```

### Restore the DB dump

 (from site/assets/backups/database/pw-lang-de.sql) either manually or with this PHP script via command line / terminal in your root directory:

```
php restore.php
```

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

## Create a pull request

As we are working with a submodule which has it's own repository, it is easy to push commits to this repo.

```bash
$ cd path/to/submodule
$ git add <stuff>
$ git commit -m "comment"
$ git push
```
### manual steps for forking and updating
Right now the manual steps you have to take are:

* fork and clone the pw-lang-de repo
* copy the files from site/assets/files/1019 to the root dir of the pw-lang-de repo
* create a pull request so I can check and merge this