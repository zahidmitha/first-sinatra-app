# Remember to run the server when testing locally
# by going shotgun sinatra-app.rb
# then go to localhost:9393 in your browser
#
require 'bundler/setup'
require 'sinatra'
require 'sinatra/contrib'
require 'erb'

get '/' do
  # This will be your default route
  erb :index
end

# Try adding some other routes

# Test at <appname>.heroku.com (you'll need to create your app first!)