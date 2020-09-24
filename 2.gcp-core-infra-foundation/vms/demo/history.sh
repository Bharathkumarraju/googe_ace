    2  sudo mkfs.ext4 -F -E lazy_itable_init=0,lazy_journal_init=0,discard /dev/disk/by-id/google-minecraft-disk
    3  sudo mount -o discard,defaults /dev/disk/by-id/google-minecraft-disk /home/minecraft
    4  sudo apt-get update
    5  sudo apt-get install -y default-jre-headless
    6  cd /home/minecraft
    7  histoey
    8  history
    9  sudo apt-get install wget
   10  sudo wget https://launcher.mojang.com/v1/objects/d0d0fe2b1dc6ab4c65554cb734270872b72dadd6/server.jar
   11  sudo java -Xmx1024M -Xms1024M -jar server.jar nogui
   12  sudo ls -l
   13  vim eula.txt
   14  sudo vim eula.txt
   15  sudo apt-get install -y screen
   16  sudo screen -S mcs java -Xmx1024M -Xms1024M -jar server.jar nogui
     ctrl+A and ctrl+D
   17  sudo screen -r mcs
   18  history
   19  export BUCKET_NAME=qwiklabs-gcp-01-c31a07d8b4d0
   20  echo $BUCKET_NAME
   21  gsutil mb gs://BUCKET_NAME-minecraft-backup
   22  gsutil mb gs://$BUCKET_NAME-minecraft-backup
   23  echo BUCKET_NAME=$BUCKET_NAME >> ~/.profile
   24  vim ~/.profile
   25  echo ${BASH_SOURCE}
   26  screen -r mcs -X stuff '/save-all\n/save-off\n'
   27  sudo screen -r mcs
   28  sudo screen -r mcs -X stuff '/save-all\n/save-off\n'
   29  echo ${BASH_SOURCE}
   30  echo ${BASH_SOURCE%/*}
   31  vim backup.sh
   32  sudo vim backup.sh
   33  sudo chmod 755 ba
   34  sudo chmod 755 backup.sh
   35  . /home/minecraft/backup.sh
   36  . .profile
   37  ls -larth
   38  cd ~
   39  pwd
   40  . .profile
   41  cd /home/minecraft/
   42  ./backup.sh
   43  vim backup.sh
   44  sudo vim backup.sh
   45  ./backup.sh
   46  student-01-085ae141342e@mc-server:/home/minecraft$ ./backup.sh
   47  Copying file://./world/level.dat [Content-Type=application/octet-stream]...
   48  Copying file://./world/session.lock [Content-Type=application/octet-stream]...
   49  Copying file://./world/level.dat_old [Content-Type=application/octet-stream]...
   50  Copying file://./world/region/r.1.-1.mca [Content-Type=application/octet-stream]...
   51  / [4 files][  9.9 KiB/  9.9 KiB]
   52  ==> NOTE: You are performing a sequence of gsutil operations that may
   53  run significantly faster if you instead use gsutil -m cp ... Please
   54  see the -m section under "gsutil help options" for further information
   55  about when gsutil -m can be advantageous.
   56  Copying file://./world/region/r.1.0.mca [Content-Type=application/octet-stream]...
   57  Copying file://./world/region/r.0.0.mca [Content-Type=application/octet-stream]...
   58  Copying file://./world/region/r.-1.0.mca [Content-Type=application/octet-stream]...
   59  Copying file://./world/region/r.0.-1.mca [Content-Type=application/octet-stream]...
   60  Copying file://./world/region/r.-1.-1.mca [Content-Type=application/octet-stream]...
   61  Copying file://./world/data/raids.dat [Content-Type=application/octet-stream]...
   62  Copying file://./world/DIM-1/data/raids_nether.dat [Content-Type=application/octet-stream]...
   63  Copying file://./world/DIM1/data/raids_end.dat [Content-Type=application/octet-stream]...
   64  | [12 files][  3.1 MiB/  3.1 MiB]
   65  Operation completed over 12 objects/3.1 MiB.
   66  student-01-085ae141342e@mc-server:/home/minecraft$
   67  sudo crontab -e
   68  sudo screen -r -X stuff '/stop\n'
   69  sudo screen -r mcs
   70  history
student-01-085ae141342e@mc-server:/home/minecraft$