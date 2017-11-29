#
# Cookbook Name:: pkg-zabbix-server
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
include_recipe 'pkg-zabbix-server::package'
include_recipe 'pkg-zabbix-server::service'
