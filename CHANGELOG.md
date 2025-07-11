# Changelog for Woodoo Buildtools

All notable changes to this project will be documented in this file.

---

## UNRELEASED Changes

- change: change support message
- update: GitHub action test to use `ubuntu-22.04`
- remove: `gautamkrishnar/keepalive-workflow@v1` step

---

## Latest Release

### 1.8.10 (2025-05-22)

- fix: typo
- fix: variable typo
- fix: licencse links
- fix: readme alt-tags
- add: Magefoge hint

### 1.8.9 (2025-03-12)

- fix: streamline variable sourcing and update version retrieval method
- fix: repository source

### 1.8.8 (2025-03-12)

- fix: improve readability and refactor clearStaticFiles and
  checkNpmOutdatedPackages functions
- fix: update .gitignore to include `.vscode/settings.json`
- fix: improve documentation and error handling in theme functions
- fix: update grunt installation command and improve error handling in theme
  checks
- fix: improve function documentation and comments for clarity

### 1.8.7 (2025-03-11)

- fix: Version check

### 1.8.6 (2025-03-11)

- chore: add coffee sponsorship message to frontend script
- fix: update project architecture output to include OS information
- fix: ensure script runs inside DDEV environment
- fix: improve error handling for required files in frontend script
- fix: improve cache clearing function with error handling
- fix: implement caching for latest WOODOO version retrieval to prevent hitting
  Github API rate limits

### 1.8.5 (2025-03-10)

- fix: `ddev frontend` and missing selftest command

### 1.8.4

- add: fallback when `package-lock.json` is missing in Hyvä theme

### 1.8.3

- update dependencies namespaces

### 1.8.2

- update: project respository namespaces
- add: contributes

### 1.8.1

- added documentation for color assignments in `CONTRIBUTING.md` to standardize
  the use of color variables in bash scripts
- added detailed color definitions and a usage example in the new "Color
  Assignments" section
- added Github Action to check if Pull Request contains `CHANGELOG.md` updates
- added documentation for .vscode settings and supported extensions
- added Discord invite link to `README.md` and `CONTRIBUTING.md`
- changed `MIT-LICENSES.md` to `LICENSE` and set this tool under GNU GENERAL
  PUBLIC LICENSE 3.0
- fixed issue to check and install grunt correctly if it is missing
  [#50](https://github.com/dermatz/ddev-woodoo-buildtools-magento/issues/50)

### 1.8.0

- added alias annotations for 'ddev f' and 'ddev fe' commands in
  `commands/web/frontend` (_requires DDEV >= 1.23.4_) [@Morgy93]
- added housekeeping task to `install.yaml` and `pre_install_actions` and
  removed old check if file exists
- updated `README.md` to mention the aliases 'ddev f' and 'ddev fe' for the
  frontend commands [@Morgy93]
- updated `README.md` with usage examples [@Morgy93]
- updated `commands/web/woodoo_components/help` to list the aliases 'ddev f' and
  'ddev fe' for the frontend commands [@Morgy93]
- refactored 'commands/web/woodoo_components/functions' to add all woodoo
  functions to this file
- remove `commands/web/woodoo_components/checks` (was moved to `functions`)
- remove invalid characters in `.vscode/settings.json`

### 1.7.0

- updated `README.md` - Thanks to [@t-muir] & [@Morgy93]
- updated Supporter in `README.md` - Thanks to [@tniebergall]
- updated `.trunk` linter settings
- fixed shell linting issues in several files
- improved `ddev frontend` Command with ddev system information
- improved Hyva Tasks sort order ( _NPM Check > Node_Modules Check > reinstall
  if required > Build > Cache refresh_ ..)
- refactored grunt task functions for default Magento projects
- refactored Hyva build functions
- move all repeatable tasks/functions into new `functions` file
- move all repeatable checks into `checks` file
- remove "whats new" hint for older Woodoo Versions (comes with 1.4.0)
- add `.vscode` settings file

This release has **no breaking changes** and is fully compatible with existing
`.ddev/config-themes.yaml`

### 1.6.5

- fix an issue when reading `..theme/composer.json` to determine which Hyva
  version to use through composer.json
- add some GitHub Status-Badges to `README.md`

### 1.6.4

- updating wording - Thanks to @andreas-penner-basecom
- changed wget command to install latest version

### 1.6.3

- add fallback if no composer.json was found in theme. Use Magento default in
  project root instead.

### 1.6.2

- improve build process with shorter CLI outputs
- improve code quality by fixing linting issues
- improved changelog formatting
- set `HostWorkingDir` to `false`
  [#24](https://github.com/dermatz/ddev-woodoo-buildtools-magento/pull/24) -
  Thanks to [@Morgy93]

---

### 1.6.1

- fix support to repair broken watch task by missing dependencies in magento 1
  projects
- improve code quality by fixing bash linting issues
- remove `-v` shortcode for Version output. Instead it will output the verbose
  output later

---

### 1.6.0

- add `version` and `--version` argument to show version. - Thanks to
  [@Morgy93](https://github.com/Morgy93)
- add health check to bats test - Thanks to
  [@Morgy93](https://github.com/Morgy93)
- add `.editorconfig` to comply with current indent config for trunk CI check -
  Thanks to [@Morgy93](https://github.com/Morgy93)
- fix bash linting issues
- add silent mode for watch task to minimize the text output to focus on the
  important parts
- update help texts

---

### 1.5.2

- improve npm dependency update check messages

---

### 1.5.1

- fix hyvä version check and output in frontend build command
- add a check to try to update node_modules in theme if packages are outdated

---

### 1.5.0

- add command parameter `ddev frontend-update -dev` to install latest dev
  features from main-branch ( _can be unstable!_ )
- formatting readme.md
- update codestyle and improved linting ( _Shoutout: trunk.io_ ;-))

---

### 1.4.3

- fix newline `\n` to gum choose for `ddev frontend init` command - Thanks to
  [@Morgy93](https://github.com/Morgy93)

---

### 1.4.2

- fix line-break in menu selection for build and watch tasks

---

### 1.4.1

- add Support for $DDEV_COMPOSER_ROOT `(e.g., ./magento2/app/design/..)`
- fix node-modules repair-functions for corrupt grunt installations

---

### 1.4.0

- add new Feature to update setup a new ddev config file
  `.ddev/config-themes.yaml` to store theme specific settings
- extend `ddev frontend` command to automatically update theme-settings from
  `config.yaml` to `config-themes.yaml`
- improved Codestyle and Codequality
- add global variables to functions
- add new dependency `Morgy93/ddev-gum` to add global gum support
  (`ddev restart` required) - [@Morgy93](https://github.com/Morgy93)
- add Context Menus to `ddev frontend init`, `ddev frontend build` and
  `ddev frontend watch` commands
- now you are able to add and remove themes in the context menu to build or
  watch. The config-file will be updated automatically.

---

### 1.3.1

- add new **host** command `ddev frontend-update` to update to the latest
  release
- update readme
- update help

---

### 1.3.0

#### New Features (Hyvä 1.1.x Support)

- Hyvä 1.1.x Support for Build-process: `build` check if Hyvä theme version is
  > 1.1.x to change build command automatically
  [#11](https://github.com/dermatz/ddev-woodoo-buildtools-magento/issues/11) by
  [@therouv](https://github.com/therouv)

#### Changes

- Clear cache once after all themes have been built
  [#12](https://github.com/dermatz/ddev-woodoo-buildtools-magento/issues/12) by
  [@therouv](https://github.com/therouv)

---

### 1.2.0

#### Changes

- update README.md
- update CHANGELOG.md
- update CONTRIBUTING.md
- update typo in Hyva checks
  [#9](https://github.com/dermatz/ddev-woodoo-buildtools-magento/pull/9)
  by [@torhoehn](https://github.com/torhoehn)
- update help command

#### New Features

- run `ddev frontend watch` without a theme-code, if just 1 theme was added in
  config.yaml [#2](https://github.com/dermatz/ddev-woodoo-buildtools-magento/issues/2)
- build/watch command start `init` automatically if no theme was configured
  before [#6](https://github.com/dermatz/ddev-woodoo-buildtools-magento/issues/6)
- add a message to the DDEV Woodoo Command Headline was added, if an Update is
  available [#4](https://github.com/dermatz/ddev-woodoo-buildtools-magento/issues/4)
- Build all themes (force) without yes/no question with `ddev frontend build -f`
  [#1](https://github.com/dermatz/ddev-woodoo-buildtools-magento/issues/1)

---

### 1.1.1

- **Important Change** Switch command from `ddev woodoo ...` to
  `ddev frontend ...`
- update README.md Feature List and Update instructions
- change Wording in README.md and CHANGELOG.md
- change Wording in `selfcheck`
- improve Error handling in theme path validation (during
  `ddev frontend themes`)

---

### 1.1.0

- add CHANGELOG.md
- add Download-Sources (latest stable and Developer Version)
- add Version Check to notify if woodoo has available updates
- add Version Tag in Woodoo default command headline
- Updated selftest to handle Version Checks
- Move bash colors from `./woodoo_components/colors` into
  `./woodoo_components/variables`
- remove `./woodoo_components/colors`

---

### 1.0.0

This is the first stable release with most common functions to build Magento 2
Projects with or without hyva.

- add ddev v1.21.6 support
- add Magento 2 CSS/JS Watcher
- add Hyvä Watcher
- add Magento 2 build functions
- add grunt self-repair during Magento 2 builds if grunt clean or less was not
  successful
- add Hyva builder
- add Build or watch specific themes
- add help page
- add Woodoo selftest
- add theme checks
- add init function to setup woodoo
