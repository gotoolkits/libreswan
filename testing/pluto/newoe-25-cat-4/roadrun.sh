sleep 5
ipsec whack --trafficstatus
ipsec whack --shuntstatus
ipsec look
killall ip > /dev/null 2> /dev/null
cp /tmp/xfrm-monitor.out OUTPUT/road.xfrm-monitor.txt
# ping should succeed through tunnel
ping -n -c 4 -I 192.1.3.209 192.1.2.23
ping -n -c 4 -I 192.1.3.209 192.1.2.45
echo done
