require "rubygems"
require "bundler/setup"

Bundler.require :default

root_dir = File.expand_path("../..", __FILE__)
app_dir = File.join(root_dir, "app")

$LOAD_PATH.unshift root_dir
$LOAD_PATH.unshift app_dir

%w{apis helpers mailers models entities uploaders}.each do |dir|
  $LOAD_PATH.unshift File.join(app_dir, dir)
end
%w{config lib}.each do |dir|
  $LOAD_PATH.unshift File.join(root_dir, dir)
end
$LOAD_PATH.unshift File.join(root_dir, "config/initializers")


require 'g2'
# require 'db'

require 'v1'

# load app and config directors
Dir.glob(["app/**/*.rb", "config/initializers/*.rb", "db/**/*.rb"]).each do |item|
  require item
end

