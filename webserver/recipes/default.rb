#
# Cookbook Name:: webserver
# Recipe:: setup
#
# Copyright 2014, INETSYS
#
# All rights reserved - Do Not Redistribute
#
include_recipe 'apache2::default'
include_recipe 'apache2::mod_php5'

apache_site '000-default' do
	enable false
end