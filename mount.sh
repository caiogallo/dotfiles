#/bin/bash

mount -o noatime,compress=zstd:3,space_cache=v2,subvol=@ /dev/nvme0n1p5 /mnt
mount -o noatime,compress=zstd:3,space_cache=v2,subvol=@snapshots /dev/nvme0n1p5 /mnt/.snapshots
mount -o noatime,compress=zstd:3,space_cache=v2,subvol=@home /dev/nvme0n1p5 /mnt/home
mount -o noatime,compress=zstd:3,space_cache=v2,subvol=@pkg /dev/nvme0n1p5 /mnt/var/cache/pacman/pkg
mount -o noatime,compress=zstd:3,space_cache=v2,subvol=@log /dev/nvme0n1p5 /mnt/var/log

