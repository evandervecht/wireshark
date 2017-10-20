# Cookbook Name:: wireshark
# Attributes:: winpcap
#
# Copyright 2013, Schuberg Philis
#
# All rights reserved - Do Not Redistribute
#

# For winpcap
default['winpcap']['package_name'] = 'Nmap 6.47'
default['winpcap']['url'] = 'https://nmap.org/dist/nmap-6.47-setup.exe'

# For Windows installation
default['wireshark']['package_name'] = 'Wireshark 1.12.8 (64-bit)'
default['wireshark']['url'] = 'https://2.na.dl.wireshark.org/win64/Wireshark-win64-1.12.8.exe'
default['wireshark']['install_dir'] = 'C:\Program Files\Wireshark'
