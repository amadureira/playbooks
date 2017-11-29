#
# Cookbook Name:: pkg-logstash
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe 'pkg-java-1.8.0-openjdk::default'
include_recipe 'pkg-logstash::package'
include_recipe 'pkg-logstash::service'
