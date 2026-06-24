# Setting up a new computer

Follow these steps to set up a new computer in the lab

## Backup
Set up a backup system when you first use your new computer. An easy option is `CrashPlan`:
- Download from the [Yale Software Library](https://yale.onthehub.com/WebStore/Welcome.aspx)
- Install and log in with the following credentials
  - User: your Yale email address
  - Server: clients.us2.crashplan.com

## Terminal
Aliases let you define shortcuts for commands you run often. Useful aliases are in **[`aliases.sh`](aliases.sh)**. Copy them (or create your own) to `~/.zprofile` (`~/.bashrc` or `~/.bash_profile` in Linux)

## Git
Set the global settings for Git from [this tutorial](git.md)

## Visual Studio Code
Always auto save files you're editing. Open the settings with `CMD+,` search for `autosave` and set `Auto Save` to `afterDelay` and `Auto Save Delay` to `1` millisecond.