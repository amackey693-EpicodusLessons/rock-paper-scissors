require('rspec')
require('rps_logic')

describe ('RPS#') do
 it("returns true if rock is the object and scissors is the argument") do 
  game = RPS.new("rock", "scissors")
  expect(game.wins?).to(eq("Player One Wins!"))
 end 
 it("returns true if scissors is the object and paper is the argument") do 
  game = RPS.new("scissors", "paper")
  expect(game.wins?).to(eq("Player One Wins!"))
 end 
 it("returns false if rock is the object and paper is the argument") do 
  game = RPS.new("rock", "paper")
  expect(game.wins?).to(eq("Player Two Wins!"))
 end 
 it("returns 'It's a tie!' if player1 & player2 select the same option") do 
  game = RPS.new("rock", "rock")
  expect(game.wins?).to(eq("It's a tie game! Try again!"))
 end 
end 