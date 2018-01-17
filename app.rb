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
    #session[:name_1] = params[:name_1]
    #session[:name_2] = params[:name_2]
    $player_1 =  Player.new(params[:name_1])
    $player_2 =  Player.new(params[:name_2])
    $game = Game.new
    redirect '/play'
  end

  get '/play' do
    @name_1 = $player_1.name
    @name_2 = $player_2.name
    @player_2_hp = $player_2.hp
    erb(:play)
  end

  get '/attack' do
    @player_1 = $player_1
    @player_2 = $player_2
    $game.hit(@player_2)
    erb(:attack)
  end
end
