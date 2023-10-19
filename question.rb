# 2- questions class
class Question
  attr_accessor :answer, :sum
  def initialize
    @number1 = rand(1..20)
    @number2 = rand(1..20)
  end
  
  
  def ask
   puts " what does #{@number1} plus #{@number2} equals"
   @answer = gets.chomp
  end 

  def compare
    @sum = @number1 + @number2
    if @sum == @answer.to_i
      "YES! you are correct"
    else
      "Seriously? No!"
    end
  end
end