require 'sinatra/base'

class Birthday < Sinatra::Base

get '/' do
  erb(:index)
end

post '/info' do
  @name = params[:name]
  @day = params[:day]
  @month = params[:month]
  print @name
  print @day
end

get '/birthday' do
end



run! if app_file == $0
end