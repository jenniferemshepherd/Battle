class Player

  DEFAULT_HP = 100
  SLAP = 10

  def initialize(name)
    @name = name
    @hp = DEFAULT_HP
  end

  def name
    @name.dup
  end

  def hp
    @hp
  end

  def receive_damage
    @hp -= SLAP
  end

  def knocked_out?
    @hp == 0
  end

end
