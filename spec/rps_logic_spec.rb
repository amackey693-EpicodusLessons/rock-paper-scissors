require('rspec')
require('rps_logic')

describe ('RPS#') do
 it("returns true if rock is the object and scissors is the argument") do 
    game = RPS.new()
    expect(game.wins?("rock", "scissors")).to(eq("Player One Wins!"))
 end 
 it("returns true if scissors is the object and paper is the argument") do 
    game = RPS.new()
    expect(game.wins?("scissors", "paper")).to(eq("Player One Wins!"))
 end 
 it("returns false if rock is the object and paper is the argument") do 
    game = RPS.new()
    expect(game.wins?("rock", "paper")).to(eq("Player Two Wins!"))
 end 
 it("returns 'It's a tie!' if player1 & player2 select the same option") do 
    game = RPS.new()
    expect(game.wins?("rock", "rock")).to(eq("It's a tie game! Try again!"))
 end 
 it("returns each players scores") do 
   game = RPS.new()
   expect(game.wins?("rock", "paper")).to(eq("Player Two Wins!"))
 end 
end 