#
# Cookbook Name:: site-chimpstack
# Recipe:: default
#
# Copyright 2014, Infochimps, Inc.
#
# All rights reserved - Do Not Redistribute
#

floating_pool_name = 'lanpool'
cidr = '192.168.42.32/27'
nova_network_networks "Create floating ip network #{cidr}" do
  pool floating_pool_name
  float_range cidr
  action :create_floating
end
