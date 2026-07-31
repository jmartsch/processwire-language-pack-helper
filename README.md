# ProcessWire environment for the German language pack

This repository provides a local ProcessWire environment for maintaining the German (`de_DE`, formal *Sie*) language pack. The pack lives in the Git submodule `site/assets/files/1019`.

The environment idea is based on work from [Bernhard Baumrock](https://github.com/BernhardBaumrock/tabulator.test).

## DDEV setup (recommended)

### 1. Clone including the language-pack submodule

```bash
git clone --recurse-submodules https://github.com/jmartsch/processwire-language-pack-helper.git
cd processwire-language-pack-helper
```

For an existing clone:

```bash
git submodule update --init --recursive
```

### 2. Replace the bundled core with the target ProcessWire stable release

The helper's database snapshot is historical. Before working on a current language-pack update, overlay the target stable core while retaining this repository's `site/` directory and helper files. The following example uses ProcessWire 3.0.256:

```bash
PW_VERSION=3.0.256
git clone --depth 1 --branch "$PW_VERSION" https://github.com/processwire/processwire.git "/tmp/processwire-$PW_VERSION"
rsync -a --delete "/tmp/processwire-$PW_VERSION/wire/" wire/
cp "/tmp/processwire-$PW_VERSION/index.php" index.php
cp "/tmp/processwire-$PW_VERSION/htaccess.txt" .htaccess
```

Use the ProcessWire release that the language-pack update targets. Do not commit the overlaid core files to this helper repository unless the helper itself is intentionally being upgraded.

### 3. Start DDEV and import the fixture database

The committed `.ddev/config.yaml` starts PHP 8.3 and MariaDB 11.8. `site/config.php` automatically uses DDEV's local database connection inside the DDEV container.

```bash
ddev start
ddev import-db --file=site/assets/backups/database/pw-lang-de.sql
```

The helper's legacy `restore.php` is kept for older setups. Prefer `ddev import-db`: it reliably imports the same dump on current PHP versions and does not require editing database credentials.

Open the local installation at:

```text
https://pw-lang-de-helper.ddev.site
```

### 4. Check out the language-pack branch to test

The submodule is its own Git repository. Fetch and switch to the language-pack branch you want to validate:

```bash
git -C site/assets/files/1019 fetch origin chore/processwire-3.0.256-language-pack
git -C site/assets/files/1019 checkout chore/processwire-3.0.256-language-pack
```

Use your own fork/branch when preparing contributions. Do not commit the helper's DDEV database state, cache, logs, sessions, or an updated submodule pointer unless that is explicitly part of the intended change.

## Login

The fixture database contains the development admin account documented in the original helper setup. Use it only locally.

## Translate

Open the German language in the ProcessWire admin:

```text
/processwire/setup/languages/edit/?id=1019
```

- **Abandoned** translations are no longer used and may be removed after review.
- **Empty** translations are newly discovered phrases that need a German translation.

## Validate a language-pack update

Validate against the same ProcessWire core that you installed. The portable validator from `pw-lang-de` can be used from a sibling checkout:

```bash
python3 ../pw-lang-de/tools/update_language_pack.py validate \
  --pack site/assets/files/1019 \
  --core .
```

Also check the actual admin login page and the edited language screen in the browser before opening a pull request.

## Contribute to the language pack

```bash
cd site/assets/files/1019
git remote add fork https://github.com/<your-account>/pw-lang-de.git
git checkout -b <your-branch>
# edit and validate translations
git add '*.json'
git commit -m "Update German translations for ProcessWire <version>"
git push -u fork <your-branch>
```

Then create a pull request against `jmartsch/pw-lang-de`.
