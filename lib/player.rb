class Player

  DEFAULT_HP = 100

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
    @hp -= rand(11)
  end

  def knocked_out?
    @hp == 0
  end

end
