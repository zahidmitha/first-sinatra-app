# Remember to run the server when testing locally
# by going shotgun sinatra-app.rb
# then go to localhost:9393 in your browser
#
require 'bundler/setup'
require 'sinatra'
require 'sinatra/contrib'
require 'erb'

get '/' do
  @name = ["Dario", "Leo","Dario", "'CRM' Sam", "Zahid"].sample


  erb :index

end

get '/dario' do
  @dario = "This is Dario's page."

  erb :dario

end


# Try adding some other routes

# Test at <appname>.heroku.com (you'll need to create your app first!)