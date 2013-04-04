# Remember to run the server when testing locally
# by going shotgun sinatra-app.rb
# then go to localhost:9393 in your browser
#
require 'bundler/setup'
require 'sinatra'
require 'sinatra/contrib'
require 'erb'
require 'data_mapper'

get '/' do
  @name = ["Dario", "Leo","Dario", "Weak Sam", "Zahid"].sample


  erb :index

end

get '/create-user' do

  erb :form

end


# Try adding some other routes

# Test at <appname>.heroku.com (you'll need to create your app first!)