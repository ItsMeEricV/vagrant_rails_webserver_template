#
# Cookbook Name:: rails-config
# Recipe:: default
#
# Copyright (C) 2015 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#

rbenv_ruby node['ruby_version'] do
  global true
end

rbenv_gem "bundler" do
  ruby_version node['ruby_version']
end
