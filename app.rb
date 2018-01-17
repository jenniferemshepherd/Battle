require 'sinatra'
require './lib/game'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end
  # start the server if ruby file executed directly
  run! if app_file == $0

  post '/names' do
    $game = Game.new(Player.new(params[:name_1]),Player.new(params[:name_2]))
    redirect '/play'
  end

  get '/play' do
    @game = $game
    # @name_2 = $game.player_2.name
    # @player_2_hp = $game.player_2.hp
    erb(:play)
  end

  get '/attack' do
    @game = $game
    @game.hit(@game.player_2)
    erb(:attack)
  end
end
