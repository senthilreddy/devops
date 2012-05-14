#
# Cookbook Name:: execution
# Recipe:: default
#
# Copyright 2012, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
execute "wget" do

        command ("wget http://ftp.ruby-lang.org/pub/ruby/1.9/ruby-1.9.3-p194.tar.gz")
        creates "/tmp/ruby-1.9.3-p194.tar.g"
        action :run
end

#execute "untar" do
#       command "tar -zxvf /tmp/ruby-1.9.3-p194.tar.gz"
#       not_if "/tmp/ruby-1.9.3-p194"
#end
