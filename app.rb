require 'sinatra'
require './lib/game'
require 'pry'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    player_1 = Player.new(params[:name_1])
    player_2 = Player.new(params[:name_2])
    $game = Game.new(player_1,player_2)
    redirect '/play'
  end

  get '/play' do
    @game = $game
    erb(:play)
  end

  get '/attack' do
    @game = $game
    @game.hit(@game.player_2)
    erb(:attack)
  end
  get '/switch' do
    @game = $game
    @game.switch_players
    redirect '/play'
  end
end
