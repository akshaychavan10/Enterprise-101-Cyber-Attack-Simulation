#!/bin/bash

# Create a new VirtualBox VM

VBoxManage createvm --name "project-x-dc" --ostype "Windows_64" --register
VBoxManage modifyvm "project-x-dc" --memory 4096 --cpus 2
VBoxManage createhd --filename "project-x-dc.vdi" --size 50000
VBoxManage storagectl "project-x-dc" --name "SATA Controller" --add sata --controller IntelAhci
VBoxManage storageattach "project-x-dc" --storagectl "SATA Controller" --port 0 --device 0 --type hdd --medium "project-x-dc.vdi"
echo "VM project-x-dc created successfully!"