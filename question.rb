class Question
  # State: 
  # Behavifor: Generates two random nubers between 1 and 20; returns both numbers and their sum

  attr_reader :number1, :number2, :answer

  def initialize
    @number1 = rand(1..20)
    @number2 = rand(1..20)
    @answer = @number1 + @number2
  end

end