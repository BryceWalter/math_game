require './game.rb'

puts "Enter a name for player 1:"
player1 = gets.chomp
puts "Enter a name for player 2:"
player2 = gets.chomp
game = Game.new(player1, player2)

until game.p1.is_dead? || game.p2.is_dead? do
  game.turn(game.p1)
  game.turn(game.p2)
end

if game.p1.is_dead?
  puts "#{game.p2.name} WINS!"
else game.p2.is_dead?
  puts "#{game.p1.name} WINS!"
end

puts "------- GAME OVER -------"
puts "Good bye!"
