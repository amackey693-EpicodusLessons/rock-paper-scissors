#!/usr/bin/env ruby
require('pry') 

class RPS 
  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end

  def wins?(player1, player2) 
    # conditions for player one winning // if results = false player 2 wins 
    if @player1 == "rock" && @player2 == "scissors" || @player1 == "paper" && @player2 == "rock" || @player1 == "scissors" && @player2 == "paper"
     results = true
    else 
     results = false    
    end

    #conditions for tie game!
    # if @player1 == "rock" && @player2 == "rock" || @player1 == "scissors" && @player2 == "scissors" || @player1 == "paper" && @player2 == "paper" 
    #   results = "It's a tie game!"
    #  end
    results
  end
end