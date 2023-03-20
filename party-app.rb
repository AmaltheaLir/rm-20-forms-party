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

post '/party' do
  name = params['name_entered']
  friends = params['number_entered']
  time = params['time']

  CSV.open("guests.csv", "a") do |csv|
    csv << [name, friends, time]
  end
   #can store data from form somewhere here  
  redirect :party
end

# Did get the csv list to show, but not yet the columns numbers (not strings) past name. Still have to work on saving info to the csv from the form, etc.  