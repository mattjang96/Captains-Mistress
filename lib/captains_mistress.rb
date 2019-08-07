require 'captains_mistress/version'
require_relative 'board'
require_relative 'player'

# A simple game of Captain's Mistress.
def start(every_player, width=7, height=6)
    Board.new(every_player, width, height)
end

def player_count
    print "Enter player count:\n> "
    response = gets.chomp.to_i
    until response >= 2 && response <= 10
      print "Please choose between 2 to 10 players. Try again:\n> "
      response = gets.chomp.to_i
    end
    response
end

def player_names(num)
    print "Player #{num+1}, enter your name:\n> "
    gets.chomp
end

def board_size
    print "Specify the board width and height (e.g. '7 6'):\n> "
    answer = gets.chomp
    return [7, 6] if answer == '' 
    until answer.split.map(&:to_i)[0] > 4 && answer.split.map(&:to_i)[1] > 4
        print "The width and height must be greater than 4 each. Try again:\n> "
        answer = gets.chomp
    end
    answer.split.map(&:to_i)
end 

def play_game
    count = player_count
    every_player = []
    count.times do |player|
        every_player.push(player_names(player))
    end
    size = board_size
    width = size[1]
    height = size[0]
    new_game = start(every_player, width, height)
    new_game.play
end

play_game


