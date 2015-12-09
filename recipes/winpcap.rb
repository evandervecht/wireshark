# Cookbook Name:: sbp_wireshark
# Recipe:: winpcap
#
# Copyright 2013, Schuberg Philis
#
# All rights reserved - Do Not Redistribute
#

if platform?("windows")
   windows_package node['winpcap']['package_name'] do
      source node['winpcap']['url']
      action :install
   end
else
   Chef::Log.warn('The Winpcap recipe only supports the Windows platform.')
end

