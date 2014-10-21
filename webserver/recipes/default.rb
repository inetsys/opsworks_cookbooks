#
# Cookbook Name:: webserver
# Recipe:: setup
#
# Copyright 2014, INETSYS
#
# All rights reserved - Do Not Redistribute
#
include_recipe 'opsworks_initial_setup::default'
include_recipe 'mysql::client'
include_recipe 'dependencies'
include_recipe 'opsworks_ganglia::client'
include_recipe 'apache2::default'
include_recipe 'apache2::mod_php5'

apache_site '000-default' do
	enable false
end