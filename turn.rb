# require './question' Do we need it this divided up?

class Turn
  # State: 
  # Behavior: Asks question and evaluates answer from player
  def initialize
    @number1 = rand(1..20)
    @number2 = rand(1..20)
    @answer = @number1 + @number2
  end

  def run_turn(player)
    print "#{player.name}, what is #{@number1} + #{@number2}? "
    response = gets.chomp.to_i

    if response == @answer
      player.score += 1
      puts "Good job #{player.name}. That's correct."
    else
      player.lives -= 1
      puts "Sorry #{player.name}. That is not correct."
    end
  end
end