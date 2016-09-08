# config.ru
require 'sinatra/base'
require 'sinatra/reloader'
require 'rubygems'
require 'data_mapper'
require 'httparty'
require 'json'
# require 'sinatra/flash'

# enable :sessions

# debug for datamapper
DataMapper::Logger.new($stdout, :debug)
DataMapper.setup(:default, 'mysql://root:omokhudu@localhost/suggie')

# pull in the helpers and controllers
Dir.glob('./app/{models, helpers,controllers}/*.rb').each { |file| require file }


# models config
DataMapper.auto_upgrade!
DataMapper.finalize

# map the controllers to routes
map('/posts') { run PostsController }