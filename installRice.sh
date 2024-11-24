########################
## Rhyme's Hyprland Rice ##
########################

HOMEDIR=/home/$SUDO_USER




################
# Symlink Configs #
################

rm -r $HOMEDIR/.config
ln -s $HOMEDIR/.dotfiles/.config $HOMEDIR/.config

rm $HOMEDIR/.bashrc
ln -s $HOMEDIR/.dotfiles/.bashrc $HOMEDIR/.bashrc

rm $HOMEDIR/.bash_profile
ln -s $HOMEDIR/.dotfiles/.bash_profile $HOMEDIR/.bash_profile

# rm $HOMEDIR/.gitconfig
# ln -s $HOMEDIR/.dotfiles/.gitconfig $HOMEDIR/.gitconfig




####################
# Symlink Grub Theme #
####################

# You have to edit "/etc/default/grub" an run 'grub-mkconfig' yourself.
# Theme taken from: http://github.com/vinceliuice/Elegant-grub2-themes
rm -r /boot/grub/themes/grubTheme
cp -r $HOMEDIR/.dotfiles/grubThemeUnlinked /boot/grub/themes/grubTheme
# rm -r $HOMEDIR/.dotfiles/grubTheme
# ln -s /boot/grub/themes/grubTheme $HOMEDIR/.dotfiles/grubTheme
cp $HOMEDIR/.dotfiles/etc/default/grub etc/default/grub
grub-mkconfig -o /boot/grub/grub.cfg




##############################
# OhMyPosh Powerline Installation #
##############################

mkdir $HOMEDIR/.cache
curl -s https://ohmyposh.dev/install.sh | bash -s -- -d /usr/bin/
rm -r $HOMEDIR/themes




#######
# YAY #
#######

# git clone https://aur.archlinux.org/yay.git
# cd yay
# makepkg -is
# cd ../




############
# Packages #
############
pacman -S base base-devel networkmanager reflector sudo git man unzip nnn neovim fastfetch btop unzip    #CLI Packages
pacman -S pipewire pipewire-pulse wireplumber bluez bluez-utils    #Driver Packages
pacman -S papurus-icon-theme noto-fonts ttf-hack-nerd mpv vscode feh hyprland    #GUI Packages

# yay rofi rofi-greenclip freedownloadmanager stalonetray playerctl waydroid
