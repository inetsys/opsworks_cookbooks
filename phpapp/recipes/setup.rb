#
# Cookbook Name:: phpapp
# Recipe:: setup
#
# Copyright 2014, INETSYS
#
# All rights reserved - Do Not Redistribute
#
include_recipe 'deploy'

node[:deploy].each do |application, deploy|

	opsworks_deploy_dir do
		user deploy[:user] || node[:apache][:user]
		group deploy[:group] || node[:apache][:group]
		path deploy[:deploy_to]
	end

	opsworks_deploy do
		deploy_data deploy
		app application
	end
end

include_recipe 'mod_php5_apache2::php'