# Cookbook Name:: sbp_wireshark
# Recipe:: wireshark
#
# Copyright 2013, Schuberg Philis
#
# All rights reserved - Do Not Redistribute
#
if platform?("windows")
   windows_package node['wireshark']['package_name'] do
      source node['wireshark']['url']
      action :install
   end
else
   Chef::Log.warn('The Wireshark recipe only supports the Windows platform.')
end

# Shortcut on all users desktop

require 'win32ole'
all_users_desktop = WIN32OLE.new("WScript.Shell").SpecialFolders("AllUsersDesktop")

windows_shortcut "#{all_users_desktop}/Wireshark.lnk" do
  target "#{node['wireshark']['install_dir']}\\Wireshark.exe"
  description "Wireshark"
  cwd node['wireshark']['install_dir']
end