sudo mkdir -p /home/minecraft

sudo mkfs.ext4 -F -E lazy_itable_init=0,\
lazy_journal_init=0,discard \
/dev/disk/by-id/google-minecraft-disk

sudo mount -o discard,defaults /dev/disk/by-id/google-minecraft-disk /home/minecraft

student-01-62ad2527240d@mc-server:~$ lsblk -a
NAME    MAJ:MIN RM  SIZE RO TYPE MOUNTPOINT
sda       8:0    0   10G  0 disk
├─sda1    8:1    0  9.9G  0 part /
├─sda14   8:14   0    3M  0 part
└─sda15   8:15   0  124M  0 part /boot/efi
sdb       8:16   0   50G  0 disk
student-01-62ad2527240d@mc-server:~$

student-01-62ad2527240d@mc-server:/dev/disk/by-id$ ls -rtlh
total 0
lrwxrwxrwx 1 root root  9 Sep 24 03:09 scsi-0Google_PersistentDisk_minecraft-disk -> ../../sdb
lrwxrwxrwx 1 root root  9 Sep 24 03:09 scsi-0Google_PersistentDisk_mc-server -> ../../sda
lrwxrwxrwx 1 root root  9 Sep 24 03:09 google-minecraft-disk -> ../../sdb
lrwxrwxrwx 1 root root  9 Sep 24 03:09 google-mc-server -> ../../sda
lrwxrwxrwx 1 root root 11 Sep 24 03:09 scsi-0Google_PersistentDisk_mc-server-part14 -> ../../sda14
lrwxrwxrwx 1 root root 11 Sep 24 03:09 google-mc-server-part14 -> ../../sda14
lrwxrwxrwx 1 root root 11 Sep 24 03:09 scsi-0Google_PersistentDisk_mc-server-part15 -> ../../sda15
lrwxrwxrwx 1 root root 11 Sep 24 03:09 google-mc-server-part15 -> ../../sda15
lrwxrwxrwx 1 root root 10 Sep 24 03:09 scsi-0Google_PersistentDisk_mc-server-part1 -> ../../sda1
lrwxrwxrwx 1 root root 10 Sep 24 03:09 google-mc-server-part1 -> ../../sda1
student-01-62ad2527240d@mc-server:/dev/disk/by-id$ pwd
/dev/disk/by-id
student-01-62ad2527240d@mc-server:/dev/disk/by-id$



student-01-62ad2527240d@mc-server:~$ sudo mkfs.ext4 -F -E lazy_itable_init=0,\
> lazy_journal_init=0,discard \
> /dev/disk/by-id/google-minecraft-disk
mke2fs 1.44.5 (15-Dec-2018)
Discarding device blocks: done
Creating filesystem with 13107200 4k blocks and 3276800 inodes
Filesystem UUID: ede2d122-81d0-4e47-84ff-b4cb6c2bfeb1
Superblock backups stored on blocks:
        32768, 98304, 163840, 229376, 294912, 819200, 884736, 1605632, 2654208,
        4096000, 7962624, 11239424

Allocating group tables: done
Writing inode tables: done
Creating journal (65536 blocks): done
Writing superblocks and filesystem accounting information: done

student-01-62ad2527240d@mc-server:~$



student-01-62ad2527240d@mc-server:~$ sudo mount -o discard,defaults /dev/disk/by-id/google-minecraft-disk /home/minecraft
student-01-62ad2527240d@mc-server:~$ df -PH
Filesystem      Size  Used Avail Use% Mounted on
udev            2.1G     0  2.1G   0% /dev
tmpfs           415M  5.5M  409M   2% /run
/dev/sda1        11G  1.5G  8.5G  15% /
tmpfs           2.1G     0  2.1G   0% /dev/shm
tmpfs           5.3M     0  5.3M   0% /run/lock
tmpfs           2.1G     0  2.1G   0% /sys/fs/cgroup
/dev/sda15      130M  8.2M  122M   7% /boot/efi
/dev/sdb         53G   55M   50G   1% /home/minecraft
student-01-62ad2527240d@mc-server:~$


