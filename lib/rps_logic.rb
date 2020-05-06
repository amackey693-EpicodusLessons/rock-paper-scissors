#!/usr/bin/env ruby
require('pry') 

class RPS 
  def initialize()
    @p1_score = 0
    @p2_score = 0
  end

  def wins?(player1, player2)
    #conditions for wrong entry
    # if player1 != "rock" || player1 != "scissors" || player1 != "paper" || player2 != "rock" || player2 != "scissors" || player2 != "paper" 
    #   results = "uh oh! please enter 'rock, paper, or scissors'"
    #   return results
    # end

    # conditions for tie game!
    if player1 == "rock" && player2 == "rock" || player1 == "scissors" && player2 == "scissors" || player1 == "paper" && player2 == "paper" 
      results = "It's a tie game!"
    # conditions for player one winning
    elsif player1 == "rock" && player2 == "scissors" || player1 == "paper" && player2 == "rock" || player1 == "scissors" && player2 == "paper"
      results = "Player One Wins!" 
      @p1_score = @p1_score + 1
      puts "P1 Score: #{@p1_score}"
      puts "P2 Score: #{@p2_score}"
    #conditions for player two winning
    else
     results = "Player Two Wins!" 
     @p2_score = @p2_score + 1
     puts "P1 Score: #{@p1_score}"
     puts "P2 Score: #{@p2_score}"
    end  
    results
  end

  def run_game
    puts "Player One: Choose rock, paper or scissors!"
    player1 = gets.chomp
    puts "Player Two: Choose rock, paper or scissors!"
    player2 = gets.chomp
    puts wins?(player1, player2)
    puts "Would you like to play again?"
    answer = gets.chomp
    if (answer == "y" || answer == "yes")
      run_game
    else 
      puts "enjoy the rest of your day!"
    end
  end
end 

# def score?()
  #   if results == "Player One Wins!"
  #     @p1_score += 1
  #     puts p1_score
  #     puts p2_score
  #   elsif results == "Player Two Wins!"
  #     @p2_score += 1
  #     puts p1_score
  #     puts p2_score
  #   end