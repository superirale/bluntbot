class TeamsController < ApplicationController
	get '/new' do
		erb :"teams/add"
	end

end