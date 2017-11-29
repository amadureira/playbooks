#
# Cookbook Name:: epel
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
template '/etc/yum.repos.d/CentOS-epel.repo' do
	source 'config.erb'
end
