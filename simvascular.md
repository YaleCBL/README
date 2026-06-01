# SimVascular

You can download the latest [SimVascular](https://github.com/SimVascular/SimVascular) release on [SimTK](https://simtk.org/projects/simvascular). Installing is different for every platform:
- macOS: Run the installer
- Windows: First install the [Windows Subsystem for Linux (WSL)](wsl.md) and then follow the Linux steps below
- Linux:
  - Install any missing packages (repeat for any other missing packages)
    ```bash
    sudo apt update
    sudo apt install build-essential '^libxcb.*-dev' libx11-xcb-dev libglu1-mesa-dev libxrender-dev libxi-dev libxkbcommon-dev libxkbcommon-x11-dev libnss3 libwebp-dev libharfbuzz-dev libsm6  libxkbfile-dev
    ```
  - Install SimVascular
    ```bash
    sudo dpkg -i SimVascular-Ubuntu-24-<version>.deb
    ```
  - Open the SimVascular GUI with
    ```bash
    /usr/local/sv/simvascular/<version>/simvascular
    ```