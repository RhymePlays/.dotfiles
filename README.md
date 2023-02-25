## Isfar Tausif's Awesome Dotfiles. 

## Programs
| #ID | Program       | .dotfile        |
| --- | ------------- | --------------- |
|   0 | git           | /.gitconfig     |
|   1 | mpv           | /.config/mpv/*  |

## Linux Installation
If installing on **Debian**
0. Make sure the .dotfiles folder resides in your home directory.
1. Open `/etc/apt/sources.list`
2. Add `contrib` `non-free` after `deb http://deb.debian.org/debian/ <version-codename> main`
3. It should look similar to this `deb http://deb.debian.org/debian/ bullseye main contrib non-free`
4. Save the file.
6. Run `sudo apt update` as root
5. Run `sudo installDebian.sh` as root

## Windows Installation
- git `mklink "<user-directory>\.gitconfig" ".dotfiles\.gitconfig"`
- mpv `mklink /d "<mpv.exe-directory>\portable_config" ".dotfiles/.config/mpv"`
-
