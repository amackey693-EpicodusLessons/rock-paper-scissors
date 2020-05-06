#!/usr/bin/env ruby
require('pry') 
require ('io/console')
require ('colorize')

class RPS 
  def initialize()
    @p1_score = 0
    @p2_score = 0
  end

  def wins?(player1, player2)
    # conditions for tie game!
    if player1 == "rock" && player2 == "rock" || player1 == "scissors" && player2 == "scissors" || player1 == "paper" && player2 == "paper" 
      puts "Looks like you TIED!"

    # conditions for player one winning
    elsif player1 == "rock" && player2 == "scissors" || player1 == "paper" && player2 == "rock" || player1 == "scissors" && player2 == "paper"
      @p1_score = @p1_score + 1
      puts "Player ONE Wins!".green
      puts "P1 Score: #{@p1_score} || P2 Score: #{@p2_score}"

    #conditions for player two winning
    elsif player2 == "rock" && player1 == "scissors" || player2 == "paper" && player1 == "rock" || player2 == "scissors" && player1 == "paper"
     @p2_score = @p2_score + 1
     puts "Player TWO Wins!" .green
     puts "P1 Score: #{@p1_score} || P2 Score: #{@p2_score}"
    # enters something other than answer
    else 
     puts "yikes! you might want to put in 'rock, paper, or scissors' next time!"
    end
  end

  def run_game
    puts "Choose rock, paper or scissors!"
    puts "Player One:"
    player1 = STDIN.noecho(&:gets).chomp
    puts "Player Two:"
    player2 = STDIN.noecho(&:gets).chomp
    puts wins?(player1, player2)
    puts "P1 Chose: " +"#{player1.upcase()}".bold + " & P2 Chose: " + "#{player2.upcase()}".bold
    puts "Would you like to play again? ".cyan + "Y".bold + " or " + "N".bold
    answer = gets.chomp
    if (answer == "y" || answer == "yes")
      run_game
    else 
      puts "FINAL SCORE".black.on_white.bold
      puts "P1 Score: #{@p1_score} || P2 Score: #{@p2_score}"
      if @p1_score > @p2_score
        puts "PLAYER ONE WINS!".green.bold
        puts "better luck next time player two!"
      else 
        puts "PLAYER TWO WINS!".green.bold
        puts "better luck next time player one!"
      end
    end
  end
end 
