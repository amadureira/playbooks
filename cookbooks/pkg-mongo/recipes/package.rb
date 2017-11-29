#
# Cookbook Name:: pkg-mongo
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
#

package 'Mongo Server' do
	package_name node['pkg-mongo']['package_server_name']
	version      node['pkg-mongo']['package_server_version']
        action [:install]
end

package 'Mongo Client' do
	package_name node['pkg-mongo']['package_client_name']
	version      node['pkg-mongo']['package_client_version']
        action [:install]
end
