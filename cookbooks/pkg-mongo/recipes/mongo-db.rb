#
# Cookbook Name:: pkg-mongo
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
#

package 'mongo-db' do
	package_name 'mongodb-org-server'
	version  '3.4.0-1.el7'
        action [:install]

end


directory '/data/' do
	owner  'mongod'
	group  'mongod'
	action :create
end

directory '/data/mongo' do
	owner  'mongod'
	group  'mongod'
	action :create
end

service 'mongodb' do
  service_name 'mongod'
  action [:nothing,:enable]
end

template '/etc/mongod.conf' do
 source 'mongod_new.erb'
 variables(:dbpath => '/data/mongo',
	   :ipaddress => node['ipaddress'],
	   :replicaname => node['pkg-mongo']['cluster']
	  )
 notifies :restart , 'service[mongodb]', :immediately
end
