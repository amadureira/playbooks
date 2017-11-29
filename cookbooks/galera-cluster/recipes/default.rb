#
# Cookbook Name:: pkg-mariadb-server
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
include_recipe 'pkg-mariadb-server::default'
include_recipe 'pkg-mariadb-client::default'
include_recipe 'pkg-mariadb-common::default'
include_recipe 'galera-cluster::config'
