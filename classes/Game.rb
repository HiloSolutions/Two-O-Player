class Game
  attr_accessor :current_turn

  def initialize(current_turn)
    @current_turn = ( current_turn * -1 )
  end

  def ChangeTurn(current_turn)

end

p = Game.new(-1)
puts p.current_turn
