dvbnet -p 43
ifconfig dvb0_0 promisc up
echo 0 > /proc/sys/net/ipv4/conf/all/rp_filter
echo 0 > /proc/sys/net/ipv4/conf/dvb0_0/rp_filter
route add -net 224.0.0.0 netmask 240.0.0.0 dev dvb0_0
udpxy -p 4022
