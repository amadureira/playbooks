#
# Cookbook Name:: pkg-mongo
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe 'pkg-mongo::package'
include_recipe 'pkg-mongo::config'
if node['pkg-mongo']['cluster'].to_s.length >0 then
include_recipe 'pkg-mongo::replica'
end
