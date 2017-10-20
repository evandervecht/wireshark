#
# Cookbook:: wireshark
# Recipe:: source_install
#
# Copyright:: 2017, The Authors, All Rights Reserved.

# ==============================================================================
                        #Wireshark pre requisites

execute 'add-apt-repository -y ppa:george-edison55/cmake-3.x' do
  notifies :update, 'apt_update[update]', :immediately
end

apt_update 'update' do
  action :nothing
end

node['wireshark']['ubuntu_pre_req'].each do |pkg_name|
  package pkg_name
end
# ==============================================================================
                  #Wireshark source code installation
remote_file '/tmp/wireshark.tar.xz' do
  source node['wireshark']['src_url']
end

directory '/opt/wireshark' do
  owner 'root'
  group 'root'
  mode '0755'
  notifies :run, "execute[extract files]", :immediately
end

execute 'extract files' do
  command 'tar xf wireshark.tar.xz -C /opt/wireshark --strip-components 1'
  cwd '/tmp'
  action :nothing
  notifies :run, "execute[configure wireshark]", :immediately
end

execute 'configure wireshark' do
  command './configure'
  cwd '/opt/wireshark'
  notifies :run, 'execute[make wireshark]', :immediately
  action :nothing
end

execute 'make wireshark' do
  command 'make'
  cwd '/opt/wireshark'
  notifies :delete, 'file[/tmp/wireshark.tar.xz]', :immediately
  action :nothing
end

file '/tmp/wireshark.tar.xz' do
  action :nothing
end

node['wireshark']['ubuntu_symbolic_links'].each do |sym_link|
  link "/usr/bin/#{sym_link}" do
    to "/opt/wireshark/#{sym_link}"
    link_type :symbolic
    action :create
  end
end
