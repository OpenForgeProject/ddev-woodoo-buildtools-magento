# Contributing to ddev Woodoo-Buildtools for Magento

## General

-   Make sure to have a working local development environment, e.g. ddev
-   Feel free to [join our Discord](https://discord.gg/H5CjMXQQHn) to discuss features, get help or stay connected.

## Submit Pull-Requests

1.  Create an [Issue](https://github.com/dermatz/ddev-woodoo-buildtools-magento/issues) as either a feature request or bug report. Please ensure the ticket includes all relevant information
2.  Fork this project, then create a new branch for your work that is related to the issue you created
3.  Commit your changes to the new branch and open a Pull Request to this repository branch: `main`

---

## Coding Quality

-   Use the Bash Standard for ddev commands
-   Run `trunk check` to validate your code against our coding rules, otherwise our pipeline will do that ;)
-   Use the Magento Coding Standard

## Documentation

-   Use the [Markdown Syntax](https://www.markdownguide.org/basic-syntax/) for documentation files

## License

a) This project is licensed under the GNU General Public License v3.0 - see the [LICENSE](./LICENSE) file for details
b) All of your contributions will be also licensed under the GNU GPL v3.0

---

## Code Formatting

-   Indent code with 4 spaces
-   Use meaningful variable and function names
-   Keep lines under 80 characters where possible
-   Use `trunk check` to lint your code

---

## Naming Conventions

-   Use camelCase for variable and function names
-   Use UPPER_CASE for constants
-   Use descriptive names for functions and variables

---

## Color Assignments

In this project, we define color variables in [`commands/web/woodoo_components/variables`](../commands/web/woodoo_components/variables) and use them in our bash scripts for consistent terminal output. Below are the color assignments:

-   **cyan**: Used for CLI commands.
-   **purple**: Used for theme names.
-   **yellow**: Used for warnings.
-   **red**: Used for errors.
-   **white**: Used for general output (default terminal color).

### Color Definitions

Here is an example of how these colors are defined in [`commands/web/woodoo_components/variables`](../commands/web/woodoo_components/variables):

```bash
# Regular
txtblk='\033[0;30m' # Black
txtred='\033[0;31m' # Red
txtgrn='\033[0;32m' # Green
txtylw='\033[0;33m' # Yellow
txtblu='\033[0;34m' # Blue
txtpur='\033[0;35m' # Purple
txtcyn='\033[0;36m' # Cyan
txtwht='\033[0;37m' # White

# Bold
bldblk='\033[1;30m' # Black
bldred='\033[1;31m' # Red
bldgrn='\033[1;32m' # Green
bldylw='\033[1;33m' # Yellow
bldblu='\033[1;34m' # Blue
bldpur='\033[1;35m' # Purple
bldcyn='\033[1;36m' # Cyan
bldwht='\033[1;37m' # White

# Underline
undblk='\033[4;30m' # Black
undred='\033[4;31m' # Red
undgrn='\033[4;32m' # Green
undylw='\033[4;33m' # Yellow
undblu='\033[4;34m' # Blue
undpur='\033[4;35m' # Purple
undcyn='\033[4;36m' # Cyan
undwht='\033[4;37m' # White

# Text with Background
bakblk='\033[40m' # Black
bakred='\033[41m' # Red
bakgrn='\033[42m' # Green
bakylw='\033[43m' # Yellow
bakblu='\033[44m' # Blue
bakpur='\033[45m' # Purple
bakcyn='\033[46m' # Cyan
bakwht='\033[47m' # White

# reset color to default
txtrst='\033[0m' # Text Reset
```

### Usage

**Example:** `echo -n "Thank ${txtgrn}you${txtrst} for using ${txtcyn}Woodoo Buildtools${txtrst}!"`

**Result:**

<div style="background-color:#1E293B;color:white;font-family:courier;border:1px solid #64748B;padding:10px;border-radius:5px;margin: 10px 0 20px;">
   Thank <span style="color:green">you</span> for using <span style="color:cyan">Woodoo Buildtools</span>!
</div>

Use `${txtrst}` to reset the color back to default terminal color.

---

## VSCode Users

VSCode users automatically apply the workspace settings defined in `.vscode/settings.json`.

To streamline your workflow, we recommend using the [Git Commit Message Helper](https://marketplace.visualstudio.com/items?itemName=D3skdev.git-commit-message-helper) extension. This tool ensures your commit messages are formatted correctly with the appropriate prefixes, based on the branch name and issue ID from GitHub.

For example: `#123 - Commit Message ...`

![Git Commit Message Helper Demo](https://github.com/d3skdev/git-prefix/raw/master/images/demo.gif)

---

## Best Practices

-   Write clear and concise comments
-   Avoid global variables, use `local VARIABLE` whenever possible
-   Use functions to encapsulate code
-   Add description to functions and describe parameters
-   Test your code thoroughly before submitting

---

## Code Review Process

-   Submit your pull request for review
-   Request a Code Review from a Maintainer
-   Address any feedback or requested changes
-   Ensure all tests pass before merging
