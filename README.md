<h1 align="center">
  <a href="https://github.com/JanioAbrantes/demoday-project">
    <!-- Please provide path to your logo here -->
    <img src="docs/images/logo.svg" alt="Logo" width="100" height="100">
  </a>
</h1>

<div align="center">
  Demoday Project
  <br />
  <a href="#about"><strong>Explore the screenshots »</strong></a>
  <br />
  </div>
<div align="center">
<br />


[![code with love by JanioAbrantes](https://img.shields.io/badge/%3C%2F%3E%20with%20%E2%99%A5%20by-JanioAbrantes-ff1414.svg?style=flat-square)](https://github.com/JanioAbrantes)
[![](https://img.shields.io/badge/KatarinaMariano-ff1414.svg?style=flat-square)](https://github.com/KatarinaMariano-QA)
[![](https://img.shields.io/badge/LaiseLopes-ff1414.svg?style=flat-square)](https://github.com/laise12)
[![](https://img.shields.io/badge/VictorCavalcante-ff1414.svg?style=flat-square)]()

</div>

<details open="open">
<summary>Table of Contents</summary>

- [About](#about)
  - [Built With](#built-with)
- [Getting Started](#getting-started)
  - [Prerequisites](#prerequisites)
- [Usage](#usage)
- [Authors](#authors)
- [License](#license)

</details>

---

## About

> **This is the final project of the Instituto Atlântico Bootcamp QA.
> This project consists in create 10 automation scripts, using the Robot Framework, to do some tests using the 
> Sr. Barriga website (https://seubarriga.wcaquino.me/login)**

<details>
<summary>Screenshots</summary>


|                                     Home Page                                      |                               Login Page                               |
|:----------------------------------------------------------------------------------:| :--------------------------------------------------------------------: |
| <img src="docs/images/Full-Account-Reset.png" title="Home Page" width="100%"> | <img src="docs/images/Log-in-all-fields-empty.png" title="Home Page" width="100%"> |

</details>

### Built With

> **Robot Framework, VS Code, Python and SeleniumLibrary**

## Getting Started

### Prerequisites

> python==3.10.8 <br />
> robotframework==5.0.1 <br />
> robotframework-faker==5.0.0 <br />
> robotframework-pythonlibcore==3.0.0 <br />
> robotframework-selenium2library==3.0.0 <br />
> robotframework-seleniumlibrary==6.0.0 <br />
> selenium==4.5.0

## Usage

> **There are some commands you can run to execute all or some tests. <br />
> Run all tests: python -m robot.run Tests (This is the folder name that contains our tests) <br />
> Run a single suit: python -m robot.run Tests/Accounts/accounts_tests.robot (This is the file name that contains the tests) <br />
> Run a single test: python -m robot.run -t "Create new account" Tests/Accounts/accounts_tests.robot (Use the test name inside the " " and then the path location of the test**

## Authors

The original setup of this repository is by [Janio Abrantes](https://github.com/JanioAbrantes),
[Katarina Mariano](https://github.com/KatarinaMariano-QA),
[Laise Lopes](https://github.com/laise12) and 
[Victor Cavalcante]().

## License

This project is licensed under the **GNU General Public License v3**.

See [LICENSE](LICENSE) for more information.