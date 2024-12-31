enable
configure terminal
hostname Switch0
banner motd # Student ID: 000041 #
interface range fastEthernet 0/1-5
switchport mode access
no shutdown
exit
end
write