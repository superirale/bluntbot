# application_controller.rb
class ApplicationController < Sinatra::Base
	# helpers ApplicationHelper

	# set folder for templates to ../views, but make the path absolute
	set :views, File.expand_path('../../views', __FILE__)

	# DataMapper::Logger.new($stdout, :debug)

	# don't enable logging when running tests
	configure :production, :development do
		enable :logging
	end

	# configure :development do
	# 	# DataMapper.setup(:default, "sqlite3://#{Dir.pwd}/development.db")
	# 	DataMapper.setup(:default, 'mysql://root:omokhudu@localhost/suggie')
	# end

	# configure :production do
	# 	DataMapper.setup(:default, ENV['DATABASE_URL'])
	# end

	def respond_message message
  		content_type :json
  		# {:text => message}.to_json
  		message.to_json
	end
end