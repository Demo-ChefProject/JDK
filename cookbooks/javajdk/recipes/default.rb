#
# Cookbook Name:: javajdk
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
include_recipe "javajdk"
=begin
windows_package 'jdk64bitinstal (en-US)' do
  source 'http://devmcnexus21.nc4.local:8081/repository/maven-releases/com/oracle/jdk-64bit/7.101/jdk-64bit-7.101.exe'
  options '-jdk'
  installer_type :custom
  action :install
end
=end

windows_package 'Mozilla Firefox 5.0 (x86 en-US)' do
  source 'http://archive.mozilla.org/pub/mozilla.org/mozilla.org/firefox/releases/5.0/win32/en-US/Firefox%20Setup%205.0.exe'
  options '-ms'
  installer_type :custom
  action :install
end
