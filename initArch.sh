# Set some pacman mirror servers in the mirrorlist
cp ./files/mirrorlist /etc/pacman.d/mirrorlist

# If keys already exists, they can be removed by running the following command.
rm -r /etc/pacman.d/gnupg/
rm -r /root/.gnupg/

# Import new gpg/pgp keys
gpg --refresh-keys
pacman-key --init
pacman-key --populate archlinux
pacman-key --refresh-keys archlinux
pacman -Syu

# Install core packages
pacman -S sudo git man unzip base-devel

# Setting up a user
useradd -m Rhyme
passwd Rhyme