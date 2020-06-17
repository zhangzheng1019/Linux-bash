#!/usr/bin/env bash
sudo yum update
sudo yum install qemu virt-manager qemu-kvm -y

sudo systemctl start libvirtd 
sudo systemctl start virtlogd