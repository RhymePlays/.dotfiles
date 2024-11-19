# Rhyme's Hyprland Rice

rm -r ~/.config && ln -s ~/.dotfiles/.config ~/.config
rm -r ~/.bashrc && ln -s ~/.dotfiles/.bashrc ~/.bashrc
rm -r ~/.bash_profile && ln -s ~/.dotfiles/.bash_profile ~/.bash_profile
rm -r ~/.gitconfig && ln -s ~/.dotfiles/.gitconfig ~/.gitconfig

mkdir ~/.cache && curl -s https://ohmyposh.dev/install.sh | bash -s -- -d /usr/bin/ && rm -r ~/themes
sudo pacman -S base-devel base nnn neovim fastfetch btop unzip    # CLI Packages
sudo pacman -S papirus-icon-theme noto-fonts mpv feh hyprland    #GUI Packages

# Microsoft-Fonts vscode rofi rofi-greenclip freedownloadmanager stalonetray playerctl