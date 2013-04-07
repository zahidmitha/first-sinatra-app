# Remember to run the server when testing locally
# by going shotgun sinatra-app.rb
# then go to localhost:9393 in your browser
# Try adding some other routes
# Test at <appname>.heroku.com (you'll need to create your app first!)

require 'bundler/setup'
require 'sinatra'
require 'sinatra/contrib'
require 'erb'
require 'data_mapper'
require './lib/user'

DataMapper.setup(:default, 'postgres://postgres:postgres@localhost/first-sinatra-app')
DataMapper.finalize
DataMapper.auto_upgrade!

get '/' do
  @name = ["Dario", "Leo","Dario", "Weak Sam", "Zahid"].sample


  erb :index

end

get '/create-user' do

  erb :form

end

post '/users' do

  @user = User.create(
  :first_name      => params[:firstname],
  :last_name       => params[:lastname],
  :socialsecurity => params[:socialsecurity],
  :commitment => params[:commitment]
)

  redirect '/users'

end

get '/users' do

  @users = User.all
  @comments= Comment.all

  erb :users

end

get '/user' do
  if !params[:firstname].empty?
    @user = User.first(:first_name => params[:firstname])
  elsif !params[:lastname].empty?
    @user = User.first(:last_name => params[:lastname])
  else
    redirect '/'
  end

  erb :user
end

get '/user/:id' do
  @user = User.get(params[:id])
  erb :user
end

put '/user/:id' do
  user = User.get(params[:id])
  user.update(
    :first_name      => params[:firstname],
    :last_name       => params[:lastname],
    :socialsecurity => params[:socialsecurity],
    :commitment => params[:commitment]
)

  redirect '/users'

end

post '/user/:id' do
  user = User.get(params[:id])
  user.destroy(
    :first_name      => params[:firstname],
    :last_name       => params[:lastname],
    :socialsecurity => params[:socialsecurity],
    :commitment => params[:commitment]
    )
  erb :users

end

get '/create_comment' do

  erb :create_comment
end

post '/users' do

  @comment = Comment.create(
  :name      => params[:name],
  :comment => params[:comment]
)

  redirect '/users'

end





