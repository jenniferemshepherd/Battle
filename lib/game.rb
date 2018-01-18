require_relative "player"

class Game

  def self.save(game)
    @@game_state = game
  end

  def self.load
    @@game_state
  end

  attr_reader :player_1, :player_2

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @players = {active: player_1, opponent: player_2 }
  end

  def hit(opponent)
    opponent.receive_damage
  end

  def switch_players
    @players = [@players.keys, @players.values.rotate].transpose.to_h
    @players[:active]
  end

  def active_player
    @players[:active]
  end

  def opponent
    @players[:opponent]
  end

end
