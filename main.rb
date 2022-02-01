require "./game.rb"
require "./player.rb"
require "./question.rb"

player1 = Player.new("Hisham")
player2 = Player.new("Ibrahim")
math = Game.new(player1, player2)
math.start_game