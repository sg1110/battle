class Game

  attr_reader :player_1, :player_2, :turn, :opponent

  def initialize(player_1,player_2)
    @player_1=player_1
    @player_2=player_2
    @turn = @player_1
    @opponent = @player_2
  end

  def attack(target)
    target.receives_damage
  end

  def switch_turn
    if @turn == @player_1
      @turn = @player_2
      @opponent = @player_1
    else
      @turn = @player_1
      @opponent = @player_2
    end
  end

  def game_over?
    @opponent.hit_points == 0
  end

end
