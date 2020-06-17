#!/usr/bin/env bash
sudo apt update
sudo apt install qemu virt-manager qemu-kvm -y

sudo systemctl start libvirtd 
sudo systemctl start virtlogd