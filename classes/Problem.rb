class Problem
  attr_reader :a, :b, :operator, :answer

  def initialize()
    @a = rand(1..20)
    @b = rand(1..20)
    @answer = a + b
  end

end

p = Problem.new()
puts p.a
puts p.b
puts p.answer