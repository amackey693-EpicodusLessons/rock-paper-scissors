#!/usr/bin/ruby
require('./lib/rps_logic')

game = RPS.new()

puts "Player One: Choose rock, paper or scissors!"
player1 = gets.chomp
puts "Player Two: Choose rock, paper or scissors!"
player2 = gets.chomp
puts game.wins?(player1, player2)



