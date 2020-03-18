# Web store order processor example activity

Swag order robot. Places orders at https://www.saucedemo.com/ by processing a
spreadsheet of orders and ordering the specified products using browser
automation. Uses environment variables for credentials.

## Setup

Install Python package dependencies:

```bash
pip install robotframework-seleniumlibrary webdrivermanager pandas xlrd
```

## If executing in Robocode Lab (not required if executing with Robocode CLI)

```bash
webdrivermanager chrome -d temp -l bin
```

## If executing with Robocode CLI

> Assumes `robocode` is installed. Install with `pip install robocode`.

Create an executable package:

```bash
robo wrap
```

Execute the activity using local environment variables file:

Windows:

```bash
robo run entrypoint.cmd -v devdata\env.json
```

macOS / Linux:

```bash
robo run entrypoint.sh -v devdata/env.json
```

Alternatively, provide the values defined in `env.json` as environment
variables. In this case, the `-v` arguments are not required.