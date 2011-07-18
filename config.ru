require 'sinatra/base'
require File.join(File.dirname(__FILE__), 'blog')
require File.join(File.dirname(__FILE__), 'admin')

run Rack::URLMap.new("/blog" =>  Blog.new(Admin.new))