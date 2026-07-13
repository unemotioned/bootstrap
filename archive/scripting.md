# Scripting

[BASH cheat sheet](https://devhints.io/bash)

## Table of Contents

- [Exit](#exit)
- [Pipefail](#pipefail)
- [Sed](#sed)
- [Redirect](#redirect)
- [ETC](#etc)

---

## Exit

`0 ~ 255`: Any none-zero value signals an error.

| Code  | Meaning                       |
| ----- | ----------------------------- |
| `0`   | Success                       |
| `1`   | General error                 |
| `2`   | misuse of shell builtins      |
| `126` | Cmd found but not executable  |
| `127` | Cmd not found                 |
| `130` | Script terminated by `Ctrl+C` |

---

## Pipefail

Safer script execution.

- `set -euo pipefail`:

  | Flag       | Meaning                                     |
  | ---------- | ------------------------------------------- |
  | `-e`       | Exit immediately if a command fails         |
  | `-u`       | Treat unset variables as errors             |
  | `-o`       | Set a named option                          |
  | `pipefail` | Pipe fails if any command in the pipe fails |

---

## [Sed](https://man7.org/linux/man-pages/man1/sed.1.html)

Parsing and transforming text.

| Uses                  | syntax                      |
| --------------------- | --------------------------- |
| Substitution          | sed 's/old/new' file.txt    |
| In-place substitution | sed -i 's/old/new' file.txt |
| Delete line           | sed '/pattern/d' file.txt   |
| Print specific lines  | sed -n 's/old/new' file.txt |

---

## Redirect

Redirects standard output to special file `/dev/null`.

```sh
>/dev/null
```

- `>`: **stdout** to a file and overwrite
- `>>`: **stdout** (append)
- `2>`: **stderr**
- `&>`: Both **stdout** and **stderr**

- `/dev/null`: Throws away everything written to it

---

## ETC

- `command -v <pkg>`: look up package in $PATH and return it if found
- `pacman -Qi <pkg>`: check if the package is installed
