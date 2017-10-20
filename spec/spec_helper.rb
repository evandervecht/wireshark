require 'chefspec'
require 'chefspec/berkshelf'
require 'pry'

at_exit { ChefSpec::Coverage.report! }

shared_context 'chef run' do
  let(:chef_run) do
    runner = ChefSpec::SoloRunner.new(platform_details)
    runner.converge(described_recipe)
  end
end

shared_examples 'Installs necessary packages' do
  it 'Installs necessary packages' do
    packages.each do |pkg_nme|
      expect(chef_run).to install_package(pkg_nme)
    end
  end
end

shared_examples 'Displays bin location' do
  it 'Displays bin location' do
    binaries.each do |binary|
      expect(binary).to eq binary
    end
  end
end
