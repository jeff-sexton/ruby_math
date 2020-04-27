require './player'
require './turn'

class Game
  # State: Stores references to the players, current player and game status
  # Behavior: runs game loop to coordinate other logic, changes current player

  def initialize(players)
    @players = Array.new(players) { Player.new }

    @current_player = 0
    @game_running = true
  
  end

  def change_player
    @current_player += 1
    if @current_player > @players.length - 1
      @current_player = 0
    end
  end

  def game_update
    @players.each do  |player|
      player.print_status
    end
  end

  def game_result
    winners = @players.reject { |player| player.lives <= 0}
    results = winners.sort_by { |player| [player.score , player.lives] }

    winner = results.pop
    puts "\n----- Game Results -----"
    puts "#{winner.name} won! With a score of #{winner.score} with #{winner.lives} lives left."

    results.reverse_each do |player|
      puts "\n#{player.name} scored #{player.score} points and had #{player.lives} lives left."
    end

    loser = @players.select { |player| player.lives <= 0}
    loser = loser.pop
    if loser 
      puts "\n#{loser.name} ended the game when they ran out of lives with a score of #{loser.score}."
    else
      puts "No one is out of lives yet."
    end
  end

  def run_game

    while @game_running
      player = @players[@current_player]
      turn = Turn.new
      puts "\n----- New Turn -----"
      turn.run_turn(player)
      
      if !player.alive
        @game_running = false
        puts "\n----- Game over -----"
      else
        puts "\n----- Game Update -----"
        self.game_update
        self.change_player
      end
    end

    self.game_result

  end

end