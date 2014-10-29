require 'serverspec'

# Required by serverspec
set :backend, :exec

describe package('httpd'), :if => os[:family] == 'centos' do
  it { should be_installed }
end

describe package('apache2'), :if => os[:family] == 'ubuntu' do
  it { should be_installed }
end

describe service('httpd'), :if => os[:family] == 'centos' do
  it { should be_enabled }
  it { should be_running }
end

describe service('apache2'), :if => os[:family] == 'ubuntu' do
  it { should be_enabled }
  it { should be_running }
end

ports = [80, 443]
ports.each do |port|
    describe port(port) do
        it { should be_listening }
    end
end