#
# Cookbook Name:: phpapp
# Recipe:: smarty
#
# Copyright 2014, INETSYS
#
# All rights reserved - Do Not Redistribute
#
node['deploy'].each do |app, deploy|

    directory "#{deploy['current_path']}/#{node['phpapp']['smarty']['cache_dir']}" do
        owner deploy['user']
        group deploy['group']
        mode '0775'
        recursive true
        action :create
    end

    directory "#{deploy['current_path']}/#{node['phpapp']['smarty']['templates_c_dir']}" do
        owner deploy['user']
        group deploy['group']
        mode '0775'
        recursive true
        action :create
    end

end
