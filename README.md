# [DDEV] Woodoo Frontend Buildtools for Magento & Hyvä
[![tests](https://github.com/dermatz/ddev-woodoo-buildtools-magento/actions/workflows/tests.yml/badge.svg)](https://github.com/dermatz/ddev-woodoo-buildtools-magento/actions/workflows/tests.yml)
![project is maintained](https://img.shields.io/maintenance/yes/2024.svg)
<img src="https://img.shields.io/github/license/dermatz/ddev-woodoo-buildtools-magento">
<img src="https://img.shields.io/github/last-commit/dermatz/ddev-woodoo-buildtools-magento">



---
This ddev add-on helps you to manage your theme build processes in Magento total easy. You can run a build command to build all your themes or a specific theme. Don't matter if the theme is a Magento Standard or Custom Theme, or maybe a Hyva theme. It automatically takes care which type of theme you use and will build it for you. If a dependency is missing, Woodoo will install it.

_>> Build all your Magento themes at once, with Magic, build with Woodoo!_

---

| Supported Magento Version| Status |
|-|-|
|<img src="https://img.shields.io/badge/Magento_2.x-Supported-43A047">| released |
|<img src="https://img.shields.io/badge/Magento_2_Hyvä_1.2x-Supported-43A047">| released |
|<img src="https://img.shields.io/badge/Magento_2_Hyvä_1.1.x-work_in_progress-29B6F6">| __will release with 1.3.0__ |
|<img src="https://img.shields.io/badge/Magento_2_Hyvä_Fallback-Supported-43A047">| released |
|<img src="https://img.shields.io/badge/Magento_1 (_MageOne_)-planned-FFCA28">| not started yet |

| Features | Status |
|-|-|
|<img src="https://img.shields.io/badge/Magento_2_Grunt_Watch_Tasks-Supported-43A047">| released |
|<img src="https://img.shields.io/badge/Magento_2_Grunt_Build_Tasks-Supported-43A047">| released |
|<img src="https://img.shields.io/badge/Hyvä_1.2.x_Build_Task-Supported-43A047">| released |
|<img src="https://img.shields.io/badge/Hyvä_1.2.x_Watch_Task-Supported-43A047">| released |
|<img src="https://img.shields.io/badge/Hyvä_Fallback_Themes-Supported-43A047">| released |
|<img src="https://img.shields.io/badge/DDEV Project_Selfcheck-Supported-43A047">| released |
|<img src="https://img.shields.io/badge/DDEV Get_Installer-Supported-43A047">| released |
|<img src="https://img.shields.io/badge/Magento_2_Code_Quality_Tools-planned-FFCA28">| not started yet |
---

## Feature request
Submit your [Feature Request](https://github.com/dermatz/ddev-woodoo-buildtools-magento/issues) by adding a new issue and add a label with `feature-request`.

---
## Install
**1 . Get the latest Version with following command in your ddev project root**
##### Latest stable version (recommended)
```shell
ddev get https://github.com/dermatz/ddev-woodoo-buildtools-magento/archive/refs/tags/1.2.0.tar.gz
```
##### Latest Developer-version (Main-Branch) - can be instable!
```shell
ddev get https://github.com/dermatz/ddev-woodoo-buildtools-magento/archive/refs/heads/main.tar.gz
```
---
**2. Start Woodoo Init to update your ./ddev/config.yaml**

```shell
ddev frontend init
```

- Add all themes you want to build or watch

----

**3. Edit .ddev/config.yaml**
Open and edit `.ddev/config.yaml` and specify pathes to the themes based on your project structure. (E.g. `src/vendor/...` or `app/design/frontend/Vendor/...`)

## Update Woodoo
**Specific Versions**
If a newer Release is available you can install the specific version in the same way how your installed. Just repeat the Install-Step with `ddev get ...` (see Install instructions).

## Usage
```shell
Usage: ddev frontend [command] [option, theme]

Command:
  init                  Initial Woodoo Setup to read all themes from dataabase and write to .ddev/config.yaml
  help                  Show a help page
  check, selftest       Woodoo Self Test
  themes                List all available themes that are configured in .ddev/config.yaml
  themes                List all available themes that are configured in .ddev/config.yaml
  build                 Build all themes that are configured in .ddev/config.yaml
  build -f              Builds all themes without yes/no question (force)
  build theme           Build a specific theme
  watch theme           Watch for CSS and JS changes in a specific theme

Option:
  -f                    Builds all themes without yes/no question (force)
  themecode             Theme-Code from .ddev/config.yaml
```

## Contributing

Contributions are welcome! Please read the [Contributing Guidelines](./CONTRIBUTING.md) first.
Feel free to send your improvements as Pull-Request.
### Watch out our Contributers & Supporter

[<img src="https://e3n.de/assets/images/logo/logo.svg" height="50">](https://e3n.de)


## License
[MIT License](./MIT-LICENSES.md) | by [Mathias Elle](https://www.linkedin.com/in/mathias-elle-842783102/) - [(dermatz.de)](https://www.dermatz.de)
