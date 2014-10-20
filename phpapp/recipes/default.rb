#
# Cookbook Name:: phpapp
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
group node['myapp']['group']

user node['myapp']['user'] do
  group node['myapp']['group']
  system true
  shell '/bin/bash'
end

include_recipe 'apache2'

# disable default site
apache_site '000-default' do
  enable false
end

# create virtualhost config
template "#{node['apache']['dir']}/sites-available/#{node['myapp']['config']}" do
  source 'vhost.conf.erb'
  notifies :restart, 'service[apache2]'
end

# create document root
directory "#{node['myapp']['document_root']}" do
  action :create
  recursive true
end

# write site
cookbook_file "#{node['myapp']['document_root']}/index.html" do
  mode '0644'
end

# enable myapp
apache_site "#{node['myapp']['config']}" do
  enable true
end
