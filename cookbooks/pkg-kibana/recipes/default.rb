#
# Cookbook Name:: pkg-kibana
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
include_recipe 'pkg-java-openjdk::default'
include_recipe 'pkg-kibana::package'
include_recipe 'pkg-kibana::service'
