=begin
Game Plan
1. Initialize a game of tic tac toe
2. Create 2 players and a board
3. One player goes first
4. Display current board
5. Current player picks spot
6. Check if spot if valid
7. Place mark in spot
8. Check for win or draw
9. repeat 4-8 until until win or draw
=end

module TIcTacToe
   def initialize

  end

  def self.instructions
    puts "======================================="
    puts "======== Welcome to TicTacToe! ========"
    puts "======================================="
    puts "The rules are simple. Two players take"
    puts "turns placing a mark on a 3x3 grid. Which"
    puts "ever gets three marks lined up first wins!"
    puts "If there are no more room to place marks"
    puts "then it's a draw! The grids are numbered"
    puts "1-9 from top to bottom."
    puts "Good luck, and have fun! :)"
    puts ""
end

end

module Board
  def self.initialize
        puts " Tablero"
  @board=["-","-","-","-","-","-","-","-","-"]
  @win_patterns = [ [0, 1, 2],
                                  [3, 4, 5],
                                  [0, 3, 6],
                                  [1, 4, 7],
                                  [2, 5, 8],
                                  [0, 4, 8],
                                  [2, 4, 6],
                                  [6, 7, 8] ]
  end
  def self.display
    initialize
    puts " "
    puts " #{@board[0]}  |  #{@board[1]} | #{@board[2]} "
    puts " "
    puts " #{@board[3]}  |  #{@board[4]} | #{@board[5]} "
    puts " "
    puts " #{@board[6]}  |  #{@board[7]} | #{@board[8]} "
  end

end

TIcTacToe.instructions
Board.display