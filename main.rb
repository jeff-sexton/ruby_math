require './game'



players = 0

while players < 2
  print "Enter Number of Players: "
  players = gets.chomp.to_i

  if players < 2
    puts "\nPlease enter at least 2.\n"
  end
end

game = Game.new(players)

game.run_game