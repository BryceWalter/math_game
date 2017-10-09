class Player
  attr_accessor :name, :lives
  def initialize(name)
    @name = name
    @lives = 3
  end

  def incorrect()
    @lives -= 1
  end

  def is_dead?()
    if @lives === 0
      return true
    end
  end
end