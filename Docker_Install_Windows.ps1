# Below install Docker on Windows - my website has more information and screenshots of the below in action: https://lostintheclouds.net/install-docker-on-windows/

# Install Docker module
Install-Module DockerMSftProvider -Force

# Now install the docker package
Install-Package Docker -ProviderName DockerMsftProvider

# reboot the machine.
Shutdown -r -f -t 00

# Now container features are available you need to installed them - if another reboot is required it will show it as yes or no
(Install-WindowsFeature Containers).RestartNeeded

# You can now use Docker (this will download the hello-world container and run it)
docker run hello-world