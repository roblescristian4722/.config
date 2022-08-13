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
You can use `install_dependencies.sh` to install all what you need, you understand how it works using the following command:
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

If you choose the command `./install_dependencies.sh install all` or `./install_dependencies.sh install submodules` a new directory will be created in your working directory (`tmp_dir` in this case), this new directory will be called `.config` so you can either replace your current `.config` directory with the new one or copy the files inside the new directory to the old one using the following command:
```shell
cp -rf .config/* ~/.config
cd ..
rm -rf tmp_dir
```
