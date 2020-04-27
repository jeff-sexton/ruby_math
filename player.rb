class Player
  # State: Stores players remaining lives, current score and name
  # Behavior: sets player name and initializes other player values
  attr_accessor :name, :lives, :score, :alive

  def initialize
    print "\nEnter Name for player: "
    name = gets.chomp
    @name = name
    @lives = 3
    @score = 0
    @alive = true
    puts "Player #{@name} starts with #{@lives} lives and a score of #{@score}."
  end

  def print_status
    puts "#{@name} has a score of #{@score} with #{@lives} lives left."
  end

  def increase_score
    @score += 1
  end

  def decrease_lives
    @lives -= 1

    if @lives <= 0
      @alive = false
    end
  end
end