# Using the terminal

Terminal commands and programs that are useful for our research.

## How to read this guide

Some commands are operating-system specific:

- **macOS** — Use the built-in Terminal, or a third-party app like [iTerm2](https://iterm2.com/).
- **Windows** — Don't use the built-in shell. Install Ubuntu through the Windows Subsystem for Linux (WSL), then use Linux for everything (below).
- **Linux** (e.g. Ubuntu, CentOS) — Installed on Yale's clusters and through WSL. Comes with a built-in terminal.

Conventions used below:

- `command` — text in code font is typed at the terminal.
- `<variable>` — angle brackets are placeholders you replace with your own value.
- Keys to press are written like `Ctrl`+`C` or `Tab`.

## Keys in the terminal

| Key | Action |
|-----|--------|
| `Up` / `Down` | Navigate through previous commands |
| `Tab` | Autocomplete |
| `Tab` `Tab` | Show all autocomplete options |
| `Ctrl`+`C` | Cancel the current command |
| `Ctrl`+`R` | Search previous commands |

## Navigating directories

| Command | Action |
|---------|--------|
| `pwd` | Print the current working directory path |
| `ls` / `ls -l` | List files and folders (long format with `-l`) |
| `cd <path>` | Change directory (relative or absolute path) |
| `cd ..` | Go up one directory |
| `cd -` | Go to the previous directory |

## Modifying directories and files

| Command | Action |
|---------|--------|
| `mkdir <name>` | Create a new directory |
| `rm <file>` | Delete a file |
| `rm -r <dir>` | Delete a directory and its contents |
| `cp <source> <target>` | Copy a file |
| `cp -r <source> <target>` | Copy a directory |
| `mv <source> <target>` | Move a file or directory |
| `touch <file>` | Create an empty file |
| `open <file>` | Open a file with its default program (macOS) |

## Editing files in vim

Editing text files in the terminal is often necessary because it's quicker, or because the machine has no monitor (e.g. an HPC cluster). Common editors are vim, emacs, and nano. The commands below are for vim.

| Keys | Action |
|------|--------|
| `i` | Start editing (insert mode) |
| `Esc` `:q` `Enter` | Quit |
| `Esc` `:q!` `Enter` | Quit without saving |
| `Esc` `:x` `Enter` | Quit and save |
| `/<search string>` `Enter` | Search |

## Aliases

Aliases let you define short names for commands you run often. The lab keeps a shared set of aliases (color `ls`, `ll`, navigation, git shortcuts, and safety prompts) in **[`aliases.sh`](../aliases.sh)** at the root of this repo.

To set them up, follow the [README](../README.md#setup) — it's one line added to your `~/.zshrc`. After that you can add your own personal aliases in `~/.zshrc` below the lab source line.

For reference, an alias is defined like this, and config lives in your shell's startup file (`~/.zshrc` on a modern Mac; `~/.bashrc` or `~/.bash_profile` on bash systems):

```bash
alias ll="ls -lahG"
```

Load changes by opening a new terminal, or with `source <config file>`.

## Password-less SSH

Password-less SSH is useful for connecting to GitHub or other (high-performance) computers.

- Generate a new key (press `Enter` at each prompt): `ssh-keygen`
- Your public key is placed at `~/.ssh/id_ed25519.pub`
- To connect to another computer, copy your public key with `ssh-copy-id <user>@<domain>`
- Copy the contents of that file to GitHub → Settings → SSH and GPG keys → New SSH key
- For Yale's computing clusters, use the [SSH key uploader](https://sshkeys.ycrc.yale.edu/cgi-bin/sshkeys.py)


## Package managers (your computer)

Software can be managed manually (download, compile, install) or automatically through a package manager. For Python, install [Miniconda](https://docs.ycrc.yale.edu/clusters-at-yale/guides/conda/) and create a new environment before doing anything — this avoids conflicts with your system Python.

- Install Python modules with pip: `pip install <module>`
- macOS: install non-Python software with Homebrew: `brew install <package>`
- Linux: install non-Python software with apt: `apt install <package>`

## Package managers (high-performance computer)

You usually can't install packages on machines maintained by others. Yale uses [modules](https://docs.ycrc.yale.edu/applications/modules/).

## Docker containers (your computer)

Docker containers are an easy way to install and run software. On your local computer:

- [Download](https://docs.docker.com/desktop/) and install Docker.
- Pull a container (once): `docker pull --platform linux/x86_64 simvascular/solver:latest`
- Run it interactively, mounting a local folder into the container: `docker run -it -v /local_folder:/container simvascular/solver:latest`
- You can now run software inside the container as usual.

## Docker containers (high-performance computer)

Use Apptainer instead of Docker ([guide](https://docs.ycrc.yale.edu/clusters-at-yale/guides/containers/)).

## Other useful programs

- `htop` — task monitor. `F3` search a process, `F9` kill a process (e.g. `9` for SIGKILL), `q` to quit.
- `grep <string>` — search file contents. `-r` search subdirectories, `-i` case-insensitive, `-l` list matching files only.

## Compile with CMake

_TODO_
