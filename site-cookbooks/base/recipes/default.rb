#
# Cookbook Name:: base
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
case node['platform_family']
when 'rhel'
  include_recipe 'yum'

  yum_repository 'nginx' do
    url 'http://nginx.org/packages/centos/$releasever/$basearch/'
    action :add
  end

end

service 'iptables' do
  action [:disable,  :stop]
end
