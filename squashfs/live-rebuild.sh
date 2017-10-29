#WIP, proof of concept (seems to work in virtualbox)
mkdir /live-rebuild
mount --bind / /live-rebuild
mksquashfs /live-rebuild /live-rebuild.squashfs -e 'live-rebuild.squashfs'
mount /dev/LIVEDEVICE /mnt
cp /live-rebuild.squashfs /mnt/live/fs.squashfs
