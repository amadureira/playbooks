	#
# Cookbook Name:: linux-base
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
#depends 'repo-3rd'

include_recipe  'repo-3rd::default'
include_recipe  'linux-base::chef'
include_recipe  'linux-base::timezone'
include_recipe  'linux-base::config'
include_recipe  'linux-base::package'
#include_recipe  'linux-base::users'
include_recipe  'repo-3rd'
