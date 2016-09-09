class UsersController < ApplicationController
	get '/register' do
		erb :"accounts/register"
	end

	post '/register' do
		team = Team.create({:name => params[:team_name]})
		# if team.any?
		# register user associated with the team replace with saving related model

		user = team.users.new({
							:name  => params[:name],
							:email => params[:email],
							:username => nil,
							:password => params[:password]
							})
		user.save

		# end
		redirect "/account/register"
	end
end