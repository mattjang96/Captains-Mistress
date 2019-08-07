class Player
  attr_accessor :name, :disc

  def initialize(name, disc)
    @disc = disc
    @name = name
  end

  def take_turn(options, all_players, curr_player)
    print "\n#{all_players[curr_player]} #{@disc}, enter a column to place your disc:\n> "
    response = gets.chomp.to_i

    until options.include?(response)
      print "That is an invalid column. Try again:\n> "
      response = gets.chomp.to_i
    end
    response
  end
end
