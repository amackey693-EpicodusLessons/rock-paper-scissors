#!/usr/bin/env ruby
require('pry') 

class RPS 
  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end

  def wins?(player1, player2) 
    if @player1 == "rock" && @player2 == "scissors"
      results = true
    end
    results
  end
end