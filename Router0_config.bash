enable
configure terminal
hostname Router0
banner motd # Student ID: 000041 #
interface gigabitEthernet 0/0
ip address 192.168.0.1 255.255.255.224
no shutdown
exit
interface serial 0/1/0
ip address 10.0.0.1 255.255.255.252
clock rate 64000
no shutdown
exit
ip dhcp pool IT
network 192.168.0.0 255.255.255.224
default-router 192.168.0.1
exit
router rip
version 2
network 192.168.0.0
network 10.0.0.0
exit
end
write