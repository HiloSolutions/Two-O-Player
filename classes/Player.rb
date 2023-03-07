class Player
  attr_accessor :score, :name

  def initialize(name)
    @score = 3
    @name = name
    @status = 'alive'
  end

  #method to lose a life
  def lose_point()
    @score -= 1
  end

  #method to check when player is dead
  def check_if_player_is_alive()
    if @score <= 0
      @status = "dead"
    else
      @status = "alive"
    end
  end


end

