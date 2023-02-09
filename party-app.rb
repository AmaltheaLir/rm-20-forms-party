require 'sinatra'
require 'CSV'

get '/' do
  'Hello World'
end

get '/party' do
  puts "Let's Have a Party!"
  erb :party 
end

post '/party' do
  puts params  #can store data from form somewhere here
  erb :party
end

# need a break... ok, need to relearn about the whole csv files shebang. Have the basic form 'figured out'. Need to also figure out how to make the csv output print neatly on the party.erb view---probably that's part of the csv shebang. 