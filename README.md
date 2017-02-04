dotfiles
========

A collection of my dotfiles & configurations mostly based off of [Evan Hahn's dotfiles](https://github.com/EvanHahn/dotfiles/)

## Setup

```sh
# clone this repo
./script/symlink.sh

# if on OSX
./script/osx-settings.sh
./script/setup
./script/packages.rb

# if on Debian
sudo apt install linuxbrew-wrapper
sudo apt-get install ruby -y
./script/setup
./script/packages.rb
```
