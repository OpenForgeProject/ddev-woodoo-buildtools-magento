# [DDEV] Woodoo Frontend Buildtools for Magento & Hyvä <img src="https://img.shields.io/github/v/release/dermatz/ddev-woodoo-buildtools-magento">

[![tests](https://github.com/dermatz/ddev-woodoo-buildtools-magento/actions/workflows/tests.yml/badge.svg)](https://github.com/dermatz/ddev-woodoo-buildtools-magento/actions/workflows/tests.yml) <img src="https://img.shields.io/librariesio/github/dermatz/ddev-woodoo-buildtools-magento" alt="Dependencies"> <img src="https://img.shields.io/github/last-commit/dermatz/ddev-woodoo-buildtools-magento" alt="Last commit date Badge"> <img src="https://img.shields.io/github/sponsors/dermatz" alt="Sponsors">

---

https://img.shields.io/github/license/dermatz/ddev-woodoo-buildtools-magento


This ddev add-on helps you to manage your theme build processes in Magento total easy. You can run a build command to build all your themes or a specific theme. Don't matter if the theme is a Magento Standard or Custom Theme, or maybe a Hyva theme. It automatically takes care which type of theme you use and will build it for you. If a dependency is missing, Woodoo will install it.

_>> Build all your Magento themes at once, with Magic, build with Woodoo!_

---

Special thanks to e3n GmbH for your Support!

## [<img src="https://e3n.de/assets/images/logo/logo.svg" height="50" alt="Logo of e3n GmbH & Co.KG in Mainz">](https://e3n.de)

| Supported Versions                                                                                                        | Status                                                                    |
| ------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------- |
| <img src="https://img.shields.io/badge/Magento_2.x-Supported-43A047" alt="Magento 2 Supported">                           | ![project is maintained](https://img.shields.io/maintenance/yes/2024.svg) |
| <img src="https://img.shields.io/badge/Magento_2_Hyvä_(all_Versions)-Supported-43A047" alt="All Hyvä Versions supported"> | ![project is maintained](https://img.shields.io/maintenance/yes/2024.svg) |
| <img src="https://img.shields.io/badge/Magento_2_Hyvä_Fallback-Supported-43A047" alt="Hyvä Fallback is supported">        | ![project is maintained](https://img.shields.io/maintenance/yes/2024.svg) |
| <img src="https://img.shields.io/badge/MageOS-Supported-43A047" alt="MageOS is supported">                                | ![project is maintained](https://img.shields.io/maintenance/yes/2024.svg) |

---

## Getting Started

### Installation

**1 . Get the latest Version with following command in your ddev project root**

##### Latest stable version (recommended)

```shell
ddev get dermatz/ddev-woodoo-buildtools-magento
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

-   Add all themes you want to build or watch

---

**3. Edit .ddev/config.yaml**
Open and edit `.ddev/config.yaml` and specify pathes to the themes based on your project structure. (E.g. `src/vendor/...` or `app/design/frontend/Vendor/...`)

## Update Woodoo

**Specific Versions**
If a newer Release is available you can install the specific version in the same way how your installed. Just repeat the Install-Step with `ddev get ...` (see Install instructions).

## Usage

```shell
Usage: ddev frontend [command] [option, theme]

Command:
  init, install           Initial Woodoo Setup to read all themes from dataabase and write to .ddev/config.yaml
  help                    Show a help page
  version, --version, -v  Show version
  check, selftest, test   Woodoo Self Test
  frontend-update         Update to the latest stable Version
  frontend-update -dev    Update to the latest development Version (can be buggy!)
  themes                  List all available themes that are configured in .ddev/config.yaml
  build                   Build all themes that are configured in .ddev/config.yaml
  build -f                Builds all themes without yes/no question (force)
  build Vendor/theme      Build a specific theme
  watch Vendor/theme      Watch for CSS and JS changes in a specific theme
  magshare                Share Magento project using ngrok and update base URL

Option:
  -f                      Builds all themes without yes/no question (force)
  themecode               Theme-Code from .ddev/config.yaml
```

## Example

To share your Magento project using ngrok and update the base URL, use the following command:

```shell
ddev magshare
```

This command will start ngrok, retrieve the forward URL, and update the local Magento base URL accordingly.

## Feature request

Submit your [Feature Request](https://github.com/dermatz/ddev-woodoo-buildtools-magento/issues) by adding a new issue and add a label with `feature-request`.

---

## Contributing

Contributions are welcome! Please read the [Contributing Guidelines](./CONTRIBUTING.md) first.
Feel free to send your improvements as Pull-Request.

---

### Watch out our Contributers, Tester & Supporter

-   [Thomas Hauschild](https://github.com/Morgy93)
-   [<img src="https://e3n.de/assets/images/logo/logo.svg" height="50" alt="Logo for E-Commerce Agency e3n based in Mainz">](https://e3n.de)

---

## License

[MIT License](./MIT-LICENSES.md) | by [Mathias Elle](https://www.linkedin.com/in/mathias-elle-842783102/)
