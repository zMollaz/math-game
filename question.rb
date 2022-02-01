class Question
  attr_reader :question

  def initialize
    num1 = rand(20)
    num2 = rand(20)
    @question = "What does #{num1} plus #{num2} equal?"
    @answer = num1 + num2
  end

  def check_answer?(answer)
    @answer == answer
  end
end