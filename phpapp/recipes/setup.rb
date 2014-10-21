#
# Cookbook Name:: phpapp
# Recipe:: setup
#
# Copyright 2014, INETSYS
#
# All rights reserved - Do Not Redistribute
#

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

include_recipe 'mod_php5_apache2'
include_recipe 'mod_php5_apache2::php'

# 	include_recipe 'apache2::service'

# 	web_app deploy[:application] do
# 		docroot deploy[:absolute_document_root]
# 		server_name deploy[:domains].first
# 		unless deploy[:domains][1, deploy[:domains].size].empty?
# 			server_aliases deploy[:domains][1, deploy[:domains].size]
# 		end
# 		mounted_at deploy[:mounted_at]
# 		ssl_certificate_ca deploy[:ssl_certificate_ca]
# 	end

# 	template "#{node[:apache][:dir]}/ssl/#{deploy[:domains].first}.crt" do
# 		mode 0600
# 		source 'ssl.key.erb'
# 		variables :key => deploy[:ssl_certificate]
# 		notifies :restart, "service[apache2]"
# 		only_if do
# 			deploy[:ssl_support]
# 		end
# 	end

# 	template "#{node[:apache][:dir]}/ssl/#{deploy[:domains].first}.key" do
# 		mode 0600
# 		source 'ssl.key.erb'
# 		variables :key => deploy[:ssl_certificate_key]
# 		notifies :restart, "service[apache2]"
# 		only_if do
# 			deploy[:ssl_support]
# 		end
# 	end

# 	# create deploy dir
# 	directory "#{deploy[:deploy_to]}" do
#   		action :create
#   		recursive true
# 	end

# 	# create virtualhost config
# 	template "#{node[:apache][:dir]}/sites-available/#{appshortname}.conf" do
#   		source 'vhost.conf.erb'
# 		variables(
# 			:document_root => "#{deploy[:deploy_to]}/#{deploy[:document_root]}"
# 		)
#   		notifies :restart, 'service[apache2]'
# 	end

# 	# enable myapp
# 	apache_site "#{deploy[:application]}.conf" do
# 		enable true
# 	end