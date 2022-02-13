#!/bin/bash



address_info="$(./IpInfo.sh)"

IpAddressOnly=$(echo "$address_info" | sed -n '/IP Address:/p')

echo -e "IP addresses on this computer are : \n$IpAddressOnly"



 