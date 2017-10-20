#
# Cookbook:: wireshark
# Recipe:: windows_install
#
# Copyright:: 2017, The Authors, All Rights Reserved.

# ==============================================================================
                            #winpcap installation
windows_package node['winpcap']['package_name'] do
   source node['winpcap']['url']
   action :install
end

# ==============================================================================
                    #Wireshark installation for Windows
windows_package node['wireshark']['package_name'] do
   source node['wireshark']['url']
   action :install
end

# Shortcut on all users desktop
require 'win32ole'
all_users_desktop = WIN32OLE.new("WScript.Shell").SpecialFolders("AllUsersDesktop")

windows_shortcut "#{all_users_desktop}/Wireshark.lnk" do
  target "#{node['wireshark']['install_dir']}\\Wireshark.exe"
  description "Wireshark"
  cwd node['wireshark']['install_dir']
end
