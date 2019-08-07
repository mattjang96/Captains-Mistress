require 'captains_mistress/version'
require_relative 'board'
require_relative 'player'

# A simple game of Captain's Mistress.
def start(every_player, width, height)
    Board.new(every_player, width, height)
end

def player_count
    print "Enter player count (2 to 10):\n> "
    response = gets.chomp.to_i
    until response >= 2 && response <= 10
      print "Please choose between 2 to 10 players. Try again:\n> "
      response = gets.chomp.to_i
    end
    response
end

def player_names(num, every_player)
    print "Player #{num+1}, enter your name:\n> "
    new_name = gets.chomp
    until !every_player.include?(new_name)
        print "That name has already been used. Please try again:\n> "
        new_name = gets.chomp
    end
    new_name
end

def board_size
    print "Specify the board width and height (e.g. '7 6'):\n> "
    answer = gets.chomp
    return [7, 6] if answer == '' 
    until answer.split.map(&:to_i)[0] > 4 && answer.split.map(&:to_i)[1] > 4 && answer.split.map(&:to_i).length == 2
        print "Please enter a width and height each greater than 4. Try again:\n> "
        answer = gets.chomp
    end
    answer.split.map(&:to_i)
end 

def play_game
    count = player_count
    every_player = []
    count.times do |player|
        every_player.push(player_names(player, every_player))
    end
    size = board_size
    width = size[0]
    height = size[1]
    new_game = start(every_player, width, height)
    new_game.play
end

play_game


