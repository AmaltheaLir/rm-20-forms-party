require 'sinatra'
require 'CSV'

get '/' do
  'Hello World'
end

get '/party' do
  @guests = CSV.read("guests.csv", headers: true)
  puts "Let's Have a Party!"
  erb :party 
end

get '/party/:guests' do
  @guests = CSV.read("guests.csv", headers: true)

  @guest = params["guests"]

  erb :party
end

post '/party' do
  puts params  #can store data from form somewhere here
  erb :party
end

# Did get the csv list to show, but not yet the columns numbers (not strings) past name. Still have to work on saving info to the csv from the form, etc.  