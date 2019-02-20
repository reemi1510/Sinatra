require "sinatra"

set :session_secret, 'super secret'

get '/' do
  'Hello world!'
end

get '/secret' do
  "Afrofuturism"
end

get '/what' do
  "Why?"
end

get '/hey' do
  "ho"
end

get '/shoes' do
  "Omg, shoes"
end

get '/random-cat' do
  @name = ["Amigo", "Oscar", "Viking"].sample
  erb(:index)
end

get '/named-cat' do
  p params
  @name = params[:name]
  erb(:index)
end
