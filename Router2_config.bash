enable
configure terminal
hostname Router2
banner motd # Student ID: 000041 #
interface gigabitEthernet 0/0
ip address 192.168.0.49 255.255.255.240
no shutdown
exit
interface serial 0/1/0
ip address 10.0.0.6 255.255.255.252
no shutdown
exit
ip dhcp pool Accounting
network 192.168.0.48 255.255.255.240
default-router 192.168.0.49
exit
router rip
version 2
network 192.168.0.48
network 10.0.0.0
exit
end
write