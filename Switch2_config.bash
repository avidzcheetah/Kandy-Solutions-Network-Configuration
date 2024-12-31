enable
configure terminal
hostname Switch2
banner motd # Student ID: 000041 #
interface range fastEthernet 0/1-3
switchport mode access
no shutdown
exit
end
write