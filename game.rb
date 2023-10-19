require "./player.rb"
require "./question.rb"


class Game 
  def initialize
    @player1 = Player.new("player1")
    @player2 = Player.new("player2") 
    @current_player = @player1  
  end

  def start
    while @current_player.lives > 0 do
      @question = Question.new 
      print @current_player.name
      @question.ask
      puts @question.compare
      if @question.compare == "Seriously? No!"
        @current_player.decrease_life
      end
      puts "P1: #{@player1.lives}/3 P1: #{@player2.lives}/3"
      if @current_player.name == "player1"
        @current_player = @player2
      else
        @current_player = @player1
      end
    end
    if @player1.lives > 0
      puts "#{@player1.name} wins with a score of #{@player1.lives}/3" 
    else
      puts "#{@player2.name} wins with a score of #{@player2.lives}/3" 
    end
  end
end
