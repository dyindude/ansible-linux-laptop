sudo apt-get install debootstrap
mkdir -p work/chroot
cd work
sudo debootstrap --arch=amd64 xenial chroot
cd chroot
sudo mount --rbind /dev dev
sudo mount --rbind /proc proc
sudo mount --rbind /sys sys
sudo cp /etc/resolv.conf etc/resolv.conf
sudo cp /etc/apt/sources.list etc/apt/sources.list
sudo chroot .
sh /bootstrap.sh #install ansible
apt-get install casper lupin-casper linux-generic
apt-get install live-boot-initramfs-tools live-boot live-config
#make efi/boot
#mkfs.fat -F 32 /dev/sdXXX1
#mount /dev/sdXXX1 /mnt
#mkdir -p /mnt/efi/boot
#cp /usr/lib/SYSLINUX.EFI/efi64/syslinux.efi /mnt/efi/boot/bootx64.efi
#cp /usr/lib/syslinux/modules/efi64/* /mnt/efi/boot/.
#cp initrd.lz to /mnt/
#cp vmlinuz to /mnt/
#copy fs.squashfs to a partition at live/fs.squashfs
