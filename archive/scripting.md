# Scripting

[bash cheat sheet](https://devhints.io/bash)

- `command -v <pkg>`: look up package in $PATH and return it if found

- `pacman -Qi <pkg>`: check if the package is installed

- `&>/dev/null`: redirect stdout and stderr to /dev/null (print no output)

- `exit 0 ~ 255`: any none-zero value signals an error

  | Code  | Meaning                       |
  | ----- | ----------------------------- |
  | `0`   | Success                       |
  | `1`   | General error                 |
  | `2`   | Misues of shell builtins      |
  | `126` | Cmd found but not executable  |
  | `127` | Cmd not found                 |
  | `130` | Script terminated by `Ctrl+C` |

- `set -euo pipefail`: safer script execution

  | Flag       | Meaning                                     |
  | ---------- | ------------------------------------------- |
  | `-e`       | Exit immediately if a command fails         |
  | `-u`       | Treat unset variables as errors             |
  | `-o`       | Set a named option                          |
  | `pipefail` | Pipe fails if any command in the pipe fails |

- `sed`: for parsing and transforming text

  | Uses                  | syntax                      |
  | --------------------- | --------------------------- |
  | Substitution          | sed 's/old/new' file.txt    |
  | In-place substitution | sed -i 's/old/new' file.txt |
  | Delete line           | sed '/pattern/d' file.txt   |
  | Print specific lines  | sed -n 's/old/new' file.txt |
