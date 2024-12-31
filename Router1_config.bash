enable
configure terminal
hostname Router1
banner motd # Student ID: 000041 #
interface gigabitEthernet 0/0
ip address 192.168.0.33 255.255.255.240
no shutdown
exit
interface serial 0/1/0
ip address 10.0.0.2 255.255.255.252
no shutdown
exit
interface serial 0/1/1
ip address 10.0.0.5 255.255.255.252
clock rate 64000
no shutdown
exit
ip dhcp pool HR
network 192.168.0.32 255.255.255.240
default-router 192.168.0.33
exit
router rip
version 2
network 192.168.0.32
network 10.0.0.0
exit
end
write