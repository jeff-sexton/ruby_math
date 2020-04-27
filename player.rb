class Player
  # State: Stores players remaining lives, current score and name
  # Behavior: sets player name and initializes other player values
  attr_accessor :name, :lives, :score

  def initialize
    print "\nEnter Name for player: "
    name = gets.chomp
    @name = name
    @lives = 3
    @score = 0
    puts "Player #{@name} starts with #{@lives} lives and a score of #{@score}."
  end
end