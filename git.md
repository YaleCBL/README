
# Git

We **never** send code over email or Slack. All code is kept in Git repositories hosted on [GitHub](https://github.com/). When starting a new project, first create a new repository.

## Initial setup (run once per computer)
Run these commands when first using git on a computer.

```bash
# Generate an SSH key first (see "Password-less SSH" above) and add it to GitHub.

# Identify your commits correctly
git config --global user.name "<your name>"
git config --global user.email "<your email>"

# Set up the remote branch automatically if it doesn't exist
git config --global push.default simple
git config --global push.autoSetupRemote true

# Always merge when pulling
git config --global pull.rebase false
```

## Using VS Code for diffs and merge conflicts (optional)

If you prefer a GUI over editing in vim, you can point git's diff and merge tools at VS Code. First make sure the `code` command is on your PATH: open VS Code, press `Cmd`+`Shift`+`P`, and run **Shell Command: Install 'code' command in PATH**. Then set it as your diff and merge tool:

```bash
# Diff tool
git config --global diff.tool vscode
git config --global difftool.vscode.cmd 'code --wait --diff $LOCAL $REMOTE'
git config --global difftool.prompt false

# Merge tool
git config --global merge.tool vscode
git config --global mergetool.vscode.cmd 'code --wait $MERGED'
```

Use them with:

| Command | Action |
|---------|--------|
| `git difftool` | Diff of unstaged changes in VS Code |
| `git difftool --staged` | Diff of staged changes |
| `git difftool <commit>` | Diff against a commit |
| `git mergetool` | Open conflicted files in VS Code's merge editor |


## Workflow

- Create a fork of the repository you want to contribute to.
- Keep your fork's main branch clean and up to date.
- Prototype and add new features in branches.
- Open pull requests to squash & merge your code.

## Useful commands

| Command | Action |
|---------|--------|
| `git clone <repo>` | Download a repository (always use SSH, not HTTPS) |
| `git status <path>` | Check the current status of files |
| `git log <path>` | View history |
| `git blame <path>` | See who last changed each line |
| `git add <path>` | Stage changes |
| `git commit` | Commit staged changes (opens the default editor) |
| `git push` | Push to the remote (GitHub) |
| `git pull` | Pull from the remote (GitHub) |
| `git checkout -b <branch>` | Create and switch to a new branch |
| `git checkout <branch>` | Switch to an existing branch |
| `git merge <branch>` | Merge another branch into the current one |
| `git remote add <name> <fork>` | Add a person's fork as a remote |
| `git fetch <name>` | Fetch that person's branches |