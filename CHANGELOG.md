# Change Log
All notable changes to this project will be documented in this file.
---
### Upcoming Changes for 1.3.0
##### This section will be updated after commits or Pull-Request merges

- Build-process check if hyva themeversion is > 1.1.19 to change build command (https://github.com/dermatz/ddev-woodoo-buildtools-magento/issues/11 by [@therouv](https://github.com/therouv))
- Clear cache once after all themes have been built (https://github.com/dermatz/ddev-woodoo-buildtools-magento/issues/12 by [@therouv](https://github.com/therouv))

---
## Latest Release

### 1.2.0
#### Changes
- update README.md
- update CHANGELOG.md
- update CONTRIBUTING.md
- update typo in hyva checks [https://github.com/dermatz/ddev-woodoo-buildtools-magento/pull/9 by [@torhoehn](https://github.com/torhoehn)]
- update help command
#### New Features
- run `ddev frontend watch` without a theme-code, if just 1 theme was added in config.yaml (https://github.com/dermatz/ddev-woodoo-buildtools-magento/issues/2)
- build/watch command start `init` automaticly if no theme was configured before (https://github.com/dermatz/ddev-woodoo-buildtools-magento/issues/6)
- add a message to the DDEV Woodoo Command Headline was added, if a Update is available (https://github.com/dermatz/ddev-woodoo-buildtools-magento/issues/4)
- Build all themes (force) without yes/no question with `ddev frontend build -f` (https://github.com/dermatz/ddev-woodoo-buildtools-magento/issues/1)

---

### 1.1.1
- **Important Change** Switch command from `ddev woodoo ...` to `ddev frontend ...`
- update README.md Feature List and Update instructions
- change Wording in README.md and CHANGELOG.md
- change Wording in `selfcheck`
- improve Errorhandling in theme path validation (during `ddev frontend themes`)

---

### 1.1.0

- add CHANGELOG.md
- add Download-Sources (latest stable and Developer Version)
- add Version Check to notify if woodoo has available updates
- add Version Tag in Woodoo default command headline
- Updated selftest to handle Version Checks
- Move bash colors from `./woodoo_components/colors` into `./woodoo_components/variables`
- remove `./woodoo_components/colors`

---

### 1.0.0

This is the first stable release with most common functions to build Magento 2 Projects with or without hyva.

- add ddev v1.21.6 support
- add dMagento 2 CSS/JS Watcher
- add Hyvä Watcher
- add Magento 2 build functions
- add grunt self-repair during Magento 2 builds if grunt clean or less was not successful
- add Hyva builder
- add Build or watch specific themes
- add help page
- add Woodoo selftest
- add theme checks
- add init function to setup woodoo
