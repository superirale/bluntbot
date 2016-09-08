class PostsController < ApplicationController
  get '/' do
  	@posts = Post.all
	erb :"home/posts"
  end

  post '/' do
  	if params.any?
		post = Post.create({"title": params[:title], "body": params[:message]})

		redirect '/posts'
  	end
  end

  get '/new' do
  	erb :"home/index"
  end

  get '/dummy' do
    message = {"message": "hello world"}
    respond_message message
  end

  get '/post_to_slack' do
    message = "Hello World"
    url =  "https://hooks.slack.com/services/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"
    response = HTTParty.post(url, :body => { :text => message }.to_json, :headers => {'content-type' => 'application/json'})

   response.parsed_response
  end

  get '/from_slack' do
  end

end