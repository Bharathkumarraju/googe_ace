To start up your instance again, visit the instance page and then click Start.
To start the Minecraft server again, you can establish an SSH connection with the instance,
remount your persistent disk, and start your Minecraft server in a new screen terminal, just as you did previously.

Automate server maintenance with startup and shutdown scripts
Instead of following the manual process to mount the persistent disk and launch the server application in a screen,
you can use metadata scripts to create a startup script and a shutdown script to do this for you.

Click mc-server.

Click Edit.

For Custom metadata, specify the following:

Key	Value
startup-script-url	https://storage.googleapis.com/cloud-training/archinfra/mcserver/startup.sh
shutdown-script-url	https://storage.googleapis.com/cloud-training/archinfra/mcserver/shutdown.sh

You'll have to click Add item to add the shutdown-script-url. When you restart your instance,
the startup script automatically mounts the Minecraft disk to the appropriate directory,
starts your Minecraft server in a screen session, and detaches the session.

When you stop the instance, the shutdown script shuts down your Minecraft server before the instance shuts down.
It's a best practice to store these scripts in Cloud Storage.

Click Save.
Click Check my progress to verify the objective