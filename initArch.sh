##########
## Init ##
##########

timedatectl
lsblk

# mkfs.ext4 /dev/root_partition
# mkfs.ext4 /dev/home_partition
# mkfs.fat -F 32 /dev/efi_system_partition # DONT DO THIS IF YOU HAVE DUAL BOOT!!!
# mkswap /dev/swap_partition

# mount --mkdir /dev/root_partition /mnt
# mount --mkdir /dev/home_partition /mnt/home
# mount --mkdir /dev/efi_system_partition /mnt/boot
# swapon /dev/swap_partition

pacstrap -K /mnt base linux linux-firmware amd-ucode grub efibootmgr networkmanager reflector sudo git neovim
genfstab -U /mnt >> /mnt/etc/fstab
arch-chroot /mnt




#####################
## New System Init ##
#####################

# ln -sf /usr/share/zoneinfo/Region/City /etc/localtime
# hwclock --systohc
echo Uncomment en_US.UTF-8 UTF-8
nvim /etc/locale.gen
locale-gen
echo LANG=en_US.UTF-8 > /etc/locale.conf
echo RhymesPCArch > /etc/hostname
echo Set Root Password
passwd
systemctl enable NetworkManager




##################
## Grub Install ##
##################

grub-install --target=x86_64-efi --efi-directory=/boot --bootloader-id=GRUB
grub-mkconfig -o /boot/grub/grub.cfg




#######################
## Setting up a user ##
#######################

useradd -m Rhyme
passwd Rhyme




############
## Reboot ##
############

exit #exit chroot
umount -R /mnt
reboot




#####################################
## Installing AMD Graphics Drivers ##
#####################################

sudo pacman -S mesa vulkan-radeon libva-mesa-driver mesa-vdpau
sudo pacman -S lib32-mesa vulkan-radeon libva-mesa-driver