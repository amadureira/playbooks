#
# Cookbook Name:: chocolatey
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
#include_recipe 'pkg-java-1.8.0-openjdk::default'
include_recipe 'pkg-httpd::default'
include_recipe 'pkg-php-fpm::default'
include_recipe 'chocolatey::config'
