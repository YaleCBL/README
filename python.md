# Python

We manage Python and its packages with [`uv`](https://docs.astral.sh/uv/), a fast, all-in-one tool that handles Python versions, virtual environments, and dependencies. It replaces the older combination of `pyenv`, `venv`, `pip`, and `conda`.

## Installation

Install `uv` with the official standalone installer on macOS and Linux:

```bash
curl -LsSf https://astral.sh/uv/install.sh | sh
```
Windows:
```powershell
powershell -ExecutionPolicy ByPass -c "irm https://astral.sh/uv/install.ps1 | iex"
```

Restart your terminal afterwards so `uv` is on your `PATH`. Keep `uv` up to date with:

```bash
uv self update
```

## Installing Python

You don't need to install Python yourself, `uv` does it for you. Install a specific version with:

```bash
uv python install 3.12        # install a specific version
uv python list                # list installed and available versions
```

## Working in an existing project

When you clone a repository that already has a `pyproject.toml`, `uv` recreates the exact environment from the lockfile (`uv.lock`):

```bash
uv sync
```

This creates a `.venv` folder in the project. You don't need to activate it manually, see "Running code" below.

## Starting a new project

`uv init` creates a new project with a `pyproject.toml` (the standard file describing your project and its dependencies):

```bash
uv init myproject             # create a new project in ./myproject
cd myproject
```

## Managing dependencies

| Command | Action |
|---------|--------|
| `uv add numpy` | Add a package and install it |
| `uv add "numpy>=2.0"` | Add a package with a version constraint |
| `uv add --dev pytest` | Add a development-only dependency |
| `uv remove numpy` | Remove a package |
| `uv sync` | Install everything from the lockfile |
| `uv lock` | Update the lockfile to the latest allowed versions |
| `uv tree` | Show the dependency tree |

`uv` automatically updates `pyproject.toml` and `uv.lock`. **Commit both files** so everyone gets the same environment.

## Running code

Run commands inside the project environment with `uv run`, this ensures the environment is up to date first:

```bash
uv run python script.py       # run a script
uv run pytest                 # run a tool installed in the project
```

If you prefer to activate the environment the traditional way:

```bash
source .venv/bin/activate     # macOS and Linux
.venv\Scripts\activate        # Windows
```

## Installing command-line tools

Use `uv tool` (or its alias `uvx`) to install or run Python applications globally, isolated from your projects:

```bash
uv tool install ruff          # install a tool globally
uvx ruff check .              # run a tool once without installing it
```

## How `uv` compares to conda

If you've used [conda](https://docs.conda.io/) (or Anaconda/Miniconda) before, here's how `uv` differs:

- **Speed**: `uv` is written in Rust and resolves and installs environments in seconds, where conda often takes minutes.
- **Scope**: conda is a general package manager that can install non-Python software (compilers, CUDA, R, etc.) from its own channels. `uv` manages Python and Python (PyPI) packages only. For most of our pure-Python work this is all you need.
- **Reproducibility**: `uv` uses the standard `pyproject.toml` and a universal lockfile (`uv.lock`) that pins exact versions across platforms. conda uses `environment.yml`, which is less strict unless you export an explicit lock.
- **Standards**: `uv` follows the modern Python packaging standards, so your project works with the wider ecosystem (pip, build tools, etc.) without conda-specific files.

Prefer `uv` for everyday Python projects. Reach for conda only when you need its non-Python packages.
