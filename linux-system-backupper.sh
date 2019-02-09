echo Linux System Backupper
echo Create by orwtmc
echo All rights reserved
echo We USE TAR+GZIP!
echo VERSION:TG1.0.0
echo Available on Any Linux OS
echo All data will backup to:
echo /LSB/
echo Ready to backup!
echo Backupping...
mkdir /LSB
echo We Only Backup Files Folder.
tar cvpzf /LSB/OS.tar.gz / --exclude=/bin --exclude=/boot --exclude=/dev --exclude=/etc --exclude=/lib --exclude=/lib64 --exclude=/mnt --exclude=/media --exclude=/opt --exclude=/proc --exclude=/run --exclude=/sbin --exclude=/srv --exclude=/sys --exclude=/tmp --exclude=/usr --exclude=/var --exclude=/LSB
clear
echo Completed.
echo Recovery: tar xvpfz [Archive Location] -C /
