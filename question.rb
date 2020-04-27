class Question
  # State: 
  # Behavifor: Generates two random nubers between 1 and 20; returns both numbers and their sum

  def initialize
    @number1 = rand(1..20)
    @number2 = rand(1..20)
    @answer = @number1 + @number2
  end

  def print_question
    print "what is #{@number1} + #{@number2}? "
  end

  def guess? (number)
    if number == @answer
      return true
    else
      return false
    end
  end
end