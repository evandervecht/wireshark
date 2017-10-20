#
# Cookbook:: wireshark
# Spec:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

require 'spec_helper'

describe 'wireshark::source_install' do
  context 'When all attributes are default' do
    include_context 'chef run'
    let(:platform_details) { Hash.new }

    it 'converges successfully' do
      expect { chef_run }.to_not raise_error
    end
  end
end
