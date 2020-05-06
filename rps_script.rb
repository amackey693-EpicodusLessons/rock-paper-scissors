#!/usr/bin/ruby
require('./lib/rps_logic')

game = RPS.new()

def run_game
  puts "Player One: Choose rock, paper or scissors!"
  player1 = gets.chomp
  puts "Player Two: Choose rock, paper or scissors!"
  player2 = gets.chomp
  puts game.wins?(player1, player2)

  puts "Would you like to play again? "
  answer = gets.chomp
  if (answer == "y" || answer == "yes")
    run_game()
  end
end

run_game()