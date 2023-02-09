require 'sinatra'
require 'CSV'

get '/' do
  'Hello World'
end

get '/party' do
  puts "Let's Have a Party!"
  erb :party 
end