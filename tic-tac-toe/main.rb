=begin
1- init game
2- show rules
3- start game ? play first ound : close game
4- unless check winner and not draw ? next round : set winner
5- ask play again ? start game : close game
=end

class Board
  attr_accessor :playing ,:check_winner
  attr_accessor :plays
  def initialize
    @playing = true
    @plays = {}
    puts ""
    puts "Game starting"
    puts "&&&&&&&&&&&&&"
    puts ""
  end

  def show_board
    puts " #{@plays[0] == nil ? "0" : @plays[0] } | #{@plays[1] == nil ? "1" : @plays[1] } | #{@plays[2] == nil ? "2" : @plays[2] } "
    puts "---|---|---"
    puts " #{@plays[3] == nil ? "3" : @plays[3] } | #{@plays[4] == nil ? "4" : @plays[4] } | #{@plays[5] == nil ? "5" : @plays[5] } "
    puts "---|---|---"
    puts " #{@plays[6] == nil ? "6" : @plays[6] } | #{@plays[7] == nil ? "7" : @plays[7] } | #{@plays[8] == nil ? "8" : @plays[8] } "
    puts ""
  end

  def show_player
    puts ""
    if (@plays.length + 1)%2 != 0
    puts "❌  PLAYS"
    else
    puts "⭕️  PLAYS"
    end
    puts ""
  end

  def play


    show_board
    puts "====================="
    puts "Choose a empty square"
    show_player
    puts ""
    option = gets.chomp.to_i
    if @plays[option] == nil
      @plays[option] = @plays.length == 0 || (@plays.length + 1)%2 != 0 ? "❌":"⭕️"
      puts ""
      @playing =true
      check_winner
    else

      puts ""
      puts "Choose another square"
      puts "====================="
      puts ""
    end
end

  def check_horizontal
    winner = false
    for i in [0,3,6] do
      if @plays[i] != nil
        if(@plays[i] == @plays[i+1] && @plays[i+1] == @plays[i+2])
          winner = true
          break if winner
        end
      end
    end
    winner
  end

  def check_vertical
    winner = false
    for i in [0,1,2] do
      if(@plays[i] != nil)
      if (@plays[i] == @plays[i+3] && @plays[i+3] == @plays[i+6])
        winner = true

        break if winner
      end
    end
    end
    winner
  end

  def check_cross
    winner = false
    if(@plays[0] != nil && @plays[2] != nil && @plays[4] != nil || @plays[6] != nil && @plays[8] != nil )
if (@plays[0] == @plays[4] && @plays[0] == @plays[8] )
      winner = true
      puts ""
      @playing = false
    end
    if (@plays[2] == @plays[4] && @plays[2] == @plays[6] )
      winner = true
      puts ""
      @playing = false
    end
  end
    winner
  end

  def check_winner
    check_horizontal
    check_vertical
    check_cross
    check_draw
    if(check_horizontal || check_vertical || check_cross)
      @playing = false
        puts "the player #{(@plays.length + 1)%2 != 0 ? "⭕️" : "❌"} Win the Game !!!"
      puts ""
      show_board

    end
  end
end

def check_draw
   if (@plays.length == 9)
     puts  "It's a Draw , Play again \n"
     winner = true
      puts ""
      @playing = false
      show_board
   end
    end

class TicTacToe
  attr_accessor :play
  def initialize
    show_rules
    @play = true
  end

  def start
    puts "====================="
    puts "New Game?"
    puts " 1:START"
    puts " 0:EXIT"
    puts "====================="
    puts ""
    @input = gets.chomp.to_i
    case @input
    when 1
      @board = Board.new

        while @board.playing
          @board.play
        end

    else
      @play = false
    end
  end

  def show_rules
    puts "======================================="
    puts "======== Welcome to TicTacToe! ========"
    puts "======================================="
    puts ""
    puts "======== RULES ========"
    puts ""
    puts "Two players take turns placing a mark on a 3x3 grid"
    puts "Which ever gets three marks lined up first wins!"
    puts "If there are no more room to place marks"
    puts "then it's a draw! The grids are numbered"
    puts "1-9 from top to bottom."
    puts ""
    puts "Good luck, and have fun! :)"
    puts ""
  end
end

game = TicTacToe.new

while game.play do
  game.start
end