class Game
  def initialize(name)
    @name = name
    @player_1 = Player.new('Player 1')
    @player_2 = Player.new('Player 2')
  end

 def start
  puts "New Game Started"
  turn
 end

 def stop_game(player)
  puts  puts "#{player.name} wins with the score of #{player.score}/3"
 end

 def check_player_status(p1, p2)
  p1_status = p1.check_if_player_is_alive()
  p2_status = p2.check_if_player_is_alive()

  if p1_status == "dead"
    stop_game(@player_2)
    exit(0)
  elsif p2_status == "dead"
    stop_game(@player_1)
    exit(0)
  end
  
 end

 def check_answer(expected, actual, player)
  if actual == expected
    puts "YES! You are correct."
  else
    puts "Seriously? No!"
    player.lose_point()
  end

 end

 def turn
  puts "#{@player_1.name} Question:"
  question = Problem.new()
  puts question.ask_question()
  answer = gets.chomp
  check_answer(question.answer, answer.to_i, @player_1)
  
  puts "#{@player_2.name} Question:"
  question = Problem.new()
  puts question.ask_question()
  answer = gets.chomp
  check_answer(question.answer, answer.to_i, @player_2)

  check_player_status(@player_1, @player_2)
  puts "p1: #{@player_1.score}/3 vs p1: #{@player_2.score}/3"
  puts "---- NEW TURN ----"
  turn
 end
 

end


