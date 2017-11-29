#
# Cookbook Name:: pkg-httpd
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute

include_recipe 'pkg-httpd::package'
include_recipe 'pkg-httpd::service'
