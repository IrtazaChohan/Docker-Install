# Below install Docker on Windows

# Install Docker module
Install-Module DockerMSftProvider -Force

# Now install the docker package
Install-Package Docker -ProviderName DockerMsftProvider

# reboot the machine.
Shutdown -r -f -t 00

# Now container features are available you need to installed them - needs another reboot
(Install-WindowsFeature Containers).RestartNeeded