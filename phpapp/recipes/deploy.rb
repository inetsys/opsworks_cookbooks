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

    puts deploy

    web_app application do
        server_name deploy['domains']
        # server_aliases ["www.Web1.com"]
        allow_override "all"
        docroot deploy['absolute_document_root']
        # aliases ["/foo /bar", "/baz /meh"]
    end

end

include_recipe 'mod_php5_apache2::php'