require './question' 

class Turn
  # State: 
  # Behavior: Asks question and evaluates answer from player

  def initialize
    @question = Question.new
  end

  def run_turn(player)

    print "#{player.name}, "
    @question.print_question

    response = gets.chomp.to_i
    result = @question.guess?(response)

    if result
      player.increase_score
      puts "Good job #{player.name}. That's correct."
    else
      player.decrease_lives
      puts "Sorry #{player.name}. That is not correct."
    end
  end
end