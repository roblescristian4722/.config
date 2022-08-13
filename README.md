# .config
All my dotfiles and Linux config

# Installation
clone this repo instide a temporal directory (not .config) using
```shell
mkdir tmp_dir
cd tmp_dir
clone https://github.com/roblescristian4722/.config.git
```

# Usage
You can clone this repo with all its submodules manually

Also, you can use `install_dependencies.sh` to install all what you need, you understand how it works using the following command:
```shell
./install_dependencies.sh
```
or
```shell
./install_dependencies.sh -h
```
or
```shell
./install_dependencies.sh --help
```

First move to your `home` directory:
```shell
cd ~
```

Then, if you choose the command `./install_dependencies.sh install all` or `./install_dependencies.sh install submodules` all of the submodules will be cloned inside your `.config` directory automatically.
