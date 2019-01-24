class Player
  attr_reader :name, :hit_points
  def initialize(name)
    @name = name
    @hit_points = 100
  end

  def receives_damage
    @hit_points -= random_damage
  end

  def random_damage
    rand(1..80)
  end

end
