enable
configure terminal
hostname Switch1
banner motd # Student ID: 000041 #
interface range fastEthernet 0/1-2
switchport mode access
no shutdown
exit
end
write