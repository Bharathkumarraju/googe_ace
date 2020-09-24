    1  sudo mkdir -p /home/minecraft
    2  sudo mkfs.ext4 -F -E lazy_itable_init=0,lazy_journal_init=0,discard /dev/disk/by-id/google-minecraft-disk
    3  sudo mount -o discard,defaults /dev/disk/by-id/google-minecraft-disk /home/minecraft
    4  sudo apt-get update
    5  sudo apt-get install -y default-jre-headless
    6  cd /home/minecraft
student-01-085ae141342e@mc-server:/home/minecraft$

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
student-01-085ae141342e@mc-server:/home/minecraft$


