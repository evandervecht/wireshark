#
# Cookbook Name:: wireshark
# Recipe:: default
#
# Copyright 2013, Schuberg Philis
#
# All rights reserved - Do Not Redistribute
#
if platform?("windows")
  include_recipe "wireshark::windows_install"
end
if platform?("ubuntu")
  include_recipe "wireshark::source_install"
end
