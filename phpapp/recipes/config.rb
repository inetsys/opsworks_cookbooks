#
# Cookbook Name:: phpapp
# Recipe:: config
#
# Copyright 2014, INETSYS
#
# All rights reserved - Do Not Redistribute
#

node['deploy'].each do |application, deploy|

    directory "#{deploy['current_path']}/#{node['phpapp']['cache_dir']}" do
        owner deploy['user']
        group deploy['group']
        mode '0770'
        recursive true
        action :create
    end

    directory "#{deploy['current_path']}/#{node['phpapp']['config_dir']}" do
        owner deploy['user']
        group deploy['group']
        mode '0770'
        recursive true
        action :create
    end

	template "#{deploy['current_path']}/#{node['phpapp']['config_dir']}/app.json" do
        source 'app.json.erb'
        owner deploy['user']
        group deploy['group']
        mode '0640'
    end

end