require_relative "player"

class Game

  attr_reader :player_1, :player_2

  def initialize(player_1, player_2, active_player = :player_1)
    @player_1 = player_1
    @player_2 = player_2
    @active_player = active_player
  end

  def hit(opponent)
    opponent.receive_damage
  end

  def switch_players
   if @active_player == :player_1
    @active_player = :player_2
   else
    @active_player = :player_1
   end
  end

  def active_player 
    return @player_1 if @active_player == :player_1
    @player_2
  end

  def opponent
    return @player_2 if @active_player == :player_1
    @player_1
  end

end
