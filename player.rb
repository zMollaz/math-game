class Player 
  attr_reader :name, :lives, :score

  def initialize(name)
    @name = name
    @lives = 3
  end

  def minus_life
    @lives -= 1
  end
end