class Problem
  attr_reader :a, :b, :operator, :answer

  def initialize()
    @a = rand(1..20)
    @b = rand(1..20)
    @answer = a + b
  end

  def ask_question()
    puts "What is the sum of #{a} + #{b}"
  end

end


