class Game
  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end

  def start_game
    active_player = @player1
    
    while @player1.lives > 0 && @player2.lives > 0 do
      question = Question.new
      
      puts "#{active_player.name}: #{question.question}"
      answer = $stdin.gets.chomp.to_i

      if question.check_answer?(answer)
        puts "Yes! you are correct."
      else  
        puts "Seriously? No!"
        active_player.minus_life
      end

      if active_player.lives > 0
        puts "#{@player1.name}: #{@player1.lives}/3 vs #{@player2.name}: #{@player2.lives}/3"
        puts "----- NEW TURN -----"
      end

      active_player = active_player == @player1 ? @player2 : @player1
    end
    puts "#{active_player.name} wins with a score of #{active_player.lives}/3"
    puts "----- GAME OVER -----"
    puts "Good bye!"
  end
end