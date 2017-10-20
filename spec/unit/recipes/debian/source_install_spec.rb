#
# Cookbook:: wireshark
# Spec:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

require 'spec_helper'

describe 'wireshark::source_install' do
  context 'When all attributes are default, on an Ubuntu 16.04' do
    include_context 'chef run'
    let(:platform_details) do
      { platform: 'ubuntu', platform_family: 'debian', version: '16.04' }
    end

    it 'converges successfully' do
      expect { chef_run }.to_not raise_error
    end

    let(:packages) do
      chef_run.node['wireshark']['ubuntu_pre_req']
    end
    include_examples 'Installs necessary packages'

    let(:binaries) do
      chef_run.node['wireshark']['ubuntu_symbolic_links']
    end
    include_examples 'Displays bin location'
  end
end
