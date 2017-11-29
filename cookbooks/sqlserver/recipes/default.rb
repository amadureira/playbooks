#
# Cookbook Name:: sqlserver
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
#include_recipe 'windows::default'
include_recipe 'pkg-dotnet3.5::default'
include_recipe 'sqlserver::package'
