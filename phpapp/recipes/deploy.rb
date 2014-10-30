#
# Cookbook Name:: phpapp
# Recipe:: deploy
#
# Copyright 2014, INETSYS
#
# All rights reserved - Do Not Redistribute
#
include_recipe 'deploy'

node['deploy'].each do |application, deploy|

    opsworks_deploy_dir do
        user deploy['user'] || node['apache']['user']
        group deploy['group'] || node['apache']['group']
        path deploy['deploy_to']
    end

    opsworks_deploy do
        deploy_data deploy
        app application
    end

    Chef::Log.info("Node deploy: #{deploy}")

    web_app application do
        server_name deploy['domains'].first
        unless deploy['domains'][1, deploy['domains'].size].empty?
            server_aliases deploy['domains'][1, deploy['domains'].size]
        end
        allow_override "all"
        docroot deploy['absolute_document_root']
        mounted_at deploy['mounted_at']
    end

end

include_recipe 'mod_php5_apache2::php'