require 'sinatra'
require './lib/game'
require 'pry'

class Battle < Sinatra::Base

  enable :sessions

   # start the server if ruby file executed directly
   run! if app_file == $0

  get '/' do
    erb(:index)
  end

  post '/names' do
    player_1 = Player.new(params[:name_1])
    player_2 = Player.new(params[:name_2])
    Game.create(player_1,player_2)
    redirect '/play'
  end

  before { @game = Game.instance }

  get '/play' do
    erb(:play)
  end

  get '/attack' do
    @game.hit(@game.opponent)
    redirect '/lose' if @game.opponent.knocked_out?
    erb(:attack)
  end

  get '/switch' do
    @game.switch_players
    redirect '/play'
  end

  get '/lose' do
    erb(:lose)
  end

end
