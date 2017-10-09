class Question
  def initialize()
    @n1 = Random.rand(10)
    @n2 = Random.rand(10)
  end

  def build_question(player)
    puts "#{player}: What does #{@n1} plus #{@n2} equal?"
  end

  def check_answer(answer)
    if answer == @n1 + @n2
      return true
    end
  end
end


