lsblk

sleep .2

echo "What drive should be formatted? Make sure to choose the right one."

read drive

umount $drive'2' 

sleep 0.5 

sfdisk --delete $drive

sleep 0.2

echo ';' | sfdisk $drive

sleep .05

mkfs.exfat $drive'1'

sleep 0.5

echo "The drive has been formatted with exfat :)"
