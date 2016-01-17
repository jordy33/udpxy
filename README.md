## udpxy ##

* Log into you raspberry with putty (windows) or ssh (OSX, Linux distro)

* The default user is osmc and password is osmc

* If you are on a mac type ssh osmc@192.168.1.66 (substitute with your ip)

* Firstt we have Install the firmware relative to your adapter in my case i have a prof7500

sudo apt-get -y install git

git clone https://github.com/jordy33/prof7500.git

cd prof7500

sudo cp dvb-usb-p7500.fw /lib/firmware/.
sudo cp stv0900.ko /lib/modules/4.3.0-10-osmc/kernel/drivers/media/dvb-frontends/stv0900.ko
reboot

* Log into you raspberry with putty (windows) or ssh (OSX, Linux distro)

* Check that your adapter is running

dmesg | grep dvb

* go to your raspberry pi osmc installation and install tvheadend 
* /settings/myosmc  select shopping cart and look for tvheadend
* wait until a a message appears Update: Operations succesfully completed
* That means that tvheadend is installed
* In a web browser open http://192.168.1.66:9981 (substitute with your ip)
* The user is osmc and the password is osm (set 89w and sbn channel)
*

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

* To listen via http open stingray-http.3mu with an editor (notepad in windows, textedit in OSX) and substitute ip adress 192.168.1.66 with your raspberry pi address. Save the file. Then open stingray-http.3mu with vlc,kodi,etc... in wherever device you might to use (android device,ios device, windows desktop,osx desktop,etc) that is connected in the same net of the raspberry using utp cable or wifi.

* If you want listen with kodi in your raspberry open stingray-multicast.3mu
