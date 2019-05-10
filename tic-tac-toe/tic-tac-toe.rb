=begin
1- init game
2- show rules
3- start game ? play first ound : close game
4- unless check winner ? next round : set winner
5- ask play again ? start game : close game
=end

class TicTacToe
  @@p1 = {}
  @@p2 = {}
  instruction = "======================================="\
  "======== Welcome to TicTacToe! ========"\
  "======================================="\
  "The rules are simple. Two players take"\
  "turns placing a mark on a 3x3 grid. Which"\
  "ever gets three marks lined up first wins!"\
  "If there are no more room to place marks"\
  "then it's a draw! The grids are numbered"\
  "1-9 from top to bottom."\
  "Good luck, and have fun! :)"\
  ""\
  def initialize
    puts instruction
  end
end

game = TicTacToe.new