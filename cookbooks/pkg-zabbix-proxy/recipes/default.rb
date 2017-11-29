#
# Cookbook Name:: pkg-zabbix-proxy
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
#
include_recipe 'pkg-zabbix-proxy::package'
include_recipe 'pkg-zabbix-proxy::service'
