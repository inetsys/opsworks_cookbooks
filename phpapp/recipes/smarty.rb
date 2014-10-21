#
# Cookbook Name:: phpapp
# Recipe:: smarty
#
# Copyright 2014, INETSYS
#
# All rights reserved - Do Not Redistribute
#
node[:deploy].each do |app, deploy|

    %w[ cache log templates_c ].each do |dir|
        directory "#{deploy[:deploy_to]}/#{dir}" do
            owner deploy[:user]
            group deploy[:group]
            mode '0755'
            recursive true
            action :create
        end
    done

done
