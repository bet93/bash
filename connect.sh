#!/bin/bash

# group, username, and password
GROUP="2"
USER="sa223793"
PASS="Smbm0701!"

# this script is used to connect the Cisco AnyConnect VPN client to the VPN server

# try to connect to Cisco AnyConnect VPN client
/opt/cisco/anyconnect/bin/vpn connect https://ucfvpn-1.vpn.ucf.edu << EOF
$GROUP
$USER
$PASS
EOF

# check if the Cisco AnyConnect VPN client connection was successful
if [ $? -eq 0 ]; then
    echo "VPN connection successful"
else
    echo "VPN connection failed"
fi









