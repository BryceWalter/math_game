require './player.rb'
require './question.rb'

class Game

  attr_accessor :p1, :p2

  def initialize(p1, p2)
    @p1 = Player.new(p1)
    @p2 = Player.new(p2)
  end

  def turn(player)
    fresh_quest = Question.new
    fresh_quest.build_question(player.name)
    user_input = gets.chomp.to_i
    if fresh_quest.check_answer(user_input)
      puts "#{player.name}: YES. That is the correct answer."
    else
      puts "WRONG. NOT THE ANSWER."
      player.incorrect()
    end
    if !player.is_dead?
      puts "#{@p1.name}: #{@p1.lives}/3 vs #{@p2.name}: #{@p2.lives}/3"
      puts "------- NEW TURN -------"
    else
      puts ""
    end
  end
end











