#
# Cookbook Name:: phpapp
# Recipe:: deploy
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

	web_app application do
		server_name deploy[:domains]
		# server_aliases ["www.Web1.com"]
		allow_override "all"
		docroot deploy[:absolute_document_root]
		# aliases ["/foo /bar", "/baz /meh"]
	end
    # La receta 'deploy' crea el directorio log
  #   directory "#{deploy[:deploy_to]}/#{node[:phpapp][:log_dir]}" do
		# owner deploy[:user]
  #       group deploy[:group]
  #       mode '0775'
  #       recursive true
  #       action :create
  #       not_if ::Dir.exist? "#{deploy[:deploy_to]}/#{node[:phpapp][:log_dir]}"
  #   end

end

include_recipe 'mod_php5_apache2::php'