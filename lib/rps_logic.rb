#!/usr/bin/env ruby
require('pry') 

class RPS 
  def initialize()
    @p1_score = 0
    @p2_score = 0
  end

  def wins?(player1, player2)
    # conditions for player one winning
    if player1 == "rock" && player2 == "scissors" || player1 == "paper" && player2 == "rock" || player1 == "scissors" && player2 == "paper"
      results = "Player One Wins!" 
    #conditions for player two winning
    else
     results = "Player Two Wins!" 
    end
    # conditions for tie game!
    if player1 == "rock" && player2 == "rock" || player1 == "scissors" && player2 == "scissors" || player1 == "paper" && player2 == "paper" 
     results = "It's a tie game! Try again!"
    end
    results
  end
  def score?()
    if results == "Player One Wins!"
      @p1_score += 1
      puts p1_score
      puts p2_score
    elsif results == "Player Two Wins!"
      @p2_score += 1
      puts p1_score
      puts p2_score
    end
  end
end