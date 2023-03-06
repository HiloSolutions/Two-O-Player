class Player
  attr_accessor :score, :name

  def initialize(name)
    @score = 3
    @name = name
  end

end

p = Player.new('Player A')
puts p.name