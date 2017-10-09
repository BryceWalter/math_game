class Player

  def inititalize(name)
    @name = name
    @lives = 3
  end

  def incorrect()
    @lives -= 1
  end

end

class Question
  prng = Random.new
  def inititalize()
    @n1 = prng.rand(20)
    @n2 = prng.rand(20)