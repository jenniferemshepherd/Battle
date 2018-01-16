require 'sinatra'

class Battle < Sinatra::Base
  get '/' do
    erb(:index)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0


  post '/names' do
    p params
    @name_1 = params[:name_1]
    @name_2 = params[:name_2]
    erb(:names)
  end
end
