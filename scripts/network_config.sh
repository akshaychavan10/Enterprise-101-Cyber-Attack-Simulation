#!/bin/bash

# Create a NAT network

VBoxManage natnetwork add --netname project-x-nat --network "10.0.0.0/24" --enable

VBoxManage natnetwork modify --netname project-x-nat --dhcp on --ip 10.0.0.1 --netmask 255.255.255.0

echo "NAT network project-x-nat configured successfully!"