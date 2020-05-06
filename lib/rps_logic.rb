#!/usr/bin/env ruby
require('pry') 

class RPS 
  def initialize()
    @p1_score = 0
    @p2_score = 0
  end

  def wins?(player1, player2)
    # conditions for tie game!
    if player1 == "rock" && player2 == "rock" || player1 == "scissors" && player2 == "scissors" || player1 == "paper" && player2 == "paper" 
      results = "It's a tie game!"

    # conditions for player one winning
    elsif player1 == "rock" && player2 == "scissors" || player1 == "paper" && player2 == "rock" || player1 == "scissors" && player2 == "paper"
      results = "Player One Wins!" 
      @p1_score = @p1_score + 1
      puts "P1 Score: #{@p1_score} || P2 Score: #{@p2_score}"

    #conditions for player two winning
    elsif player2 == "rock" && player1 == "scissors" || player2 == "paper" && player1 == "rock" || player2 == "scissors" && player1 == "paper"
     results = "Player Two Wins!" 
     @p2_score = @p2_score + 1
     puts "P1 Score: #{@p1_score} || P2 Score: #{@p2_score}"
    else 
     results = "yikes! you might want to put in 'rock, paper, or scissors next time!"
    end
    results
  end

  def run_game
    puts "Player One: Choose rock, paper or scissors!"
    player1 = gets.chomp
    puts "Player Two: Choose rock, paper or scissors!"
    player2 = gets.chomp
    puts wins?(player1, player2)
    puts "Would you like to play again? y or n"
    answer = gets.chomp
    if (answer == "y" || answer == "yes")
      run_game
    else 
      puts "FINAL SCORE"
      puts "P1 Score: #{@p1_score} || P2 Score: #{@p2_score}"
      if @p1_score > @p2_score
        puts "Player One WINS!"
        puts "better luck next time player two!"
      else 
        puts "Player Two WINS!"
        puts "better luck next time player one!"
      end
    end
  end
end 
