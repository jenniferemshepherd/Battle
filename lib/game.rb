require_relative "player"

class Game
  def hit(opponent)
    opponent.receive_damage
  end
end
