## udpxy ##

* Log into you raspberry with putty (windows) or ssh (OSX, Linux distro)

* The default password is osmc

* First we have to download the software

git clone https://github.com/jordy33/udpxy.git

* Then we have to compile udpproxy

cd udpxy

sudo make install

cd ..

* Add permissions to run the start-up script

sudo chmod 777 run.sh

* Next we have to Edit /etc/rc.local with nano to enable to run the program at startup

sudo nano /etc/rc.local

*At the end of the file before exit 0 insert the following lines:

/home/osmc/run.sh

* save with ctrl-x

* Everything is done reboot the raspberry to take configuration

reboot

* To see udpxy status

http://substitute-with-raspberry-pi-ip-address:4022/status

* The hear the stingray music channels first you have to tune the religious SBN channel located at 89w using tvheadend

* To listen via http open stingray-http.3mu with an editor (notepad in windows, textedit in OSX) and substitute ip adress 192.168.1.66 with your raspberry pi address. Then open the file with vlc,kodi,etc... in wherever device you might to use (android device,ios device, windows desktop,osx desktop,etc) that is connected in the same net of the raspberry either utp or wifi.

* If you want listen with kodi in your raspberry open stingray-multicast.3mu
