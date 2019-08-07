require_relative 'player'
####### Part 2 ####### 
## Adjustable Board ##
##    Party Time    ##

class Board
  attr_accessor :board, :all_players, :round, :column_options, :width, :height

  def initialize(all_players, width = 7, height = 6)
    @round = 1
    @current_player = 0
    @board = Array.new(width) { Array.new(height, '.') }
    @column_options = [*1..height] 
    @width, @height, @all_players = width, height, all_players 
    @all_player_icons = ['🧸','💜','🌼', '🌸', '🧲','💊','🎀','🎈','💎','🌺']
  end

  def play
    render
    print_board
    update
  end

  ### Renders the board - is called after every turn until game is won/drawn ###
  def render
    height.times do |row|
      @board[row] = []

      width.times do
        @board[row] << '.'
      end
    end
  end

  def print_board
    puts "----------\nWelcome to Captain's Mistress\n----------"
    render_board = "\n"
    for row in (width-1).downto(0)
      (0..height-1).each do |column|
          render_board << " #{@board[column][row]} "
      end
      render_board << "\n"
    end
      puts render_board
  end

  ### Individual round logic ###
  def update
    game_over = false
    while (@round <= width*height && !game_over)
      turn
      @round += 1
      print_board
      game_over = win?
    end
    game_over ? win : draw
  end

  def turn
    player = Player.new(all_players[@current_player], @all_player_icons[@current_player])
    chosen_column = player.take_turn(@column_options, @all_players, @current_player) - 1 # accounts for array index starts at 0
    add_disc(player, chosen_column)
  end

  # add current player disc to the specified column of board
  def add_disc(player, column)
    i = 0
    until @board[column][i] == '.'
      i += 1
    end
    @board[column][i] = player.disc
    @column_options.delete(column + 1) if i == @height - 1
    @current_player = (@current_player + 1) % @all_players.length
  end

  ### Win or Tie ###
  def win
    winner = @all_players[(@current_player - 1) % @all_players.length] 
    puts "Congratulations #{winner}, you've won!"
  end

  def draw
    puts "That's a tie! Try again."
  end

  ### Win Logic / Condition ###
  def win?
    diagonal_connect_4 || horizontal_connect_4 || vertical_connect_4 ? true : false 
  end

  ### Horizontal connect 4 ###
  def horizontal_connect_4
    0.upto(width-2) do |col|
      0.upto(3) do |row|
        return true if @board[col][row] != '.' && @board[col][row] == @board[col + 1][row] && @board[col + 1][row] == @board[col + 2][row] && board[col + 2][row] == board[col + 3][row] # check all adjacent grids horizontally (x)
      end
    end
    false
  end

  ### Vertical connect 4 ###
  def vertical_connect_4
    0.upto(width-1) do |col|
      0.upto(2) do |row|
        return true if @board[col][row] != '.' && @board[col][row] == @board[col][row + 1] && @board[col][row + 1] == @board[col][row + 2] && @board[col][row + 2] == @board[col][row + 3] # check all adjacent grids vertically (row)
      end
    end
    false
  end

  ## Diagonal connect 4 ###
  def diagonal_connect_4
    0.upto(3) do |col|
      0.upto(2) do |row|
        return true if @board[col][row] != '.' && @board[col][row] == @board[col + 1][row + 1] && @board[col + 1][row + 1] == @board[col + 2][row + 2] && @board[col + 2][row + 2] == @board[col + 3][row + 3]
      end

      3.upto(5) do |row|
        return true if @board[col][row] != '.' && @board[col][row] == @board[col + 1][row - 1] && @board[col + 1][row - 1] == @board[col + 2][row - 2] && @board[col + 2][row - 2] == @board[col + 3][row - 3]
      end
    end
    false
  end

end
