#
# Cookbook Name:: mysql
# Recipe:: default
#
# Copyright 2012, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute

["httpd", "mysql-server"].each do |pkg|
    package pkg do
    action :install
    end
end

    service "httpd" do
    action [:enable, :start]
end

user "senthilr" do
    comment "senthilr User"
    uid 1000
    gid "users"
    home "/home/senthilr"
    password "fdf9e5655d2d1d64439edc61f2e002fb"
end

cookbook_file "/opt/senthilr.sh" do
    source "senthilr.sh"
    mode "0644"
end

directory "/opt/scripts" do
   owner "senthilr"
   group "root"
   action :create
   end
    
cookbook_file "/opt/scripts/httpd.sh" do
   source "httpd.sh"
   mode "0665"
   end

cron "httpd restart" do
  hour "10"
  minute "20"
  command "/opt/scripts/httpd.sh"
end
