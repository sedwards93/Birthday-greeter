require 'sinatra/base'
require './lib/user.rb'

class Birthday < Sinatra::Base
  enable :sessions

get '/' do
  erb(:index)
end

post '/info' do
  session[:fname] = params[:fname]
  session[:day] = (params[:day]).to_i
  session[:month] = (params[:month]).to_i
  redirect '/birthdayeval'
end

get '/birthdayeval' do
  user = User.new(session[:fname],session[:day],session[:month])
  @name = user.name
  @days = user.birthday
  erb(:birthday)

end



run! if app_file == $0
end