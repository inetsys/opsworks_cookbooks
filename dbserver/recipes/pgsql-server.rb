#
# Cookbook Name:: dbserver
# Recipe:: pgsql-server
#
# Copyright 2014, INETSYS
#
# All rights reserved - Do Not Redistribute
#

# include_recipe 'dbserver::epel'

#package "tar" do
#  version "1.16.1-1"
#  action :install
#end

# node.default['yum']['pgdg']['enabled'] = true
# node.default['yum']['pgdg']['mirrorlist'] = nil
# node.default['yum']['pgdg']['baseurl'] = 'http://yum.postgresql.org/9.3/redhat/rhel-$releasever-$basearch'
# node.default['yum']['pgdg']['sslverify'] = false

include_recipe 'yum-pgdg'

# yum_repository 'pgdg-9.3' do
# 	mirrorlist 'http://yum.pgrpms.org/9.3/fedora/fedora-$releasever-$basearch'
# 	description 'PostgreSQL 9.2'
# 	enabled true
# 	gpgcheck true
# 	gpgkey 'http://yum.postgresql.org/RPM-GPG-KEY-PGDG'
# end