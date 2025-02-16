#!/bin/bash

# Install Postfix
sudo apt update
sudo apt install postfix mailutils -y

# Configure Postfix
sudo postconf -e 'home_mailbox= Maildir/'
sudo postconf -e 'virtual_alias_maps= hash:/etc/postfix/virtual'

# Create virtual email mapping
echo "email-svr@corp.project-x-dc.com email-svr" | sudo tee -a /etc/postfix/virtual
sudo postmap /etc/postfix/virtual
sudo systemctl restart postfix