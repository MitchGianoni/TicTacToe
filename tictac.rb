require "pry"

# TIC TAC TOE OR ELSE

# Requirements: Running this file should play a game of 
#   			tic-tac-toe in the terminal,
#
# Easy Mode: 
# => Play game to completion and print game's outcome.
# => Each turn, display current board and prompt user for a move.
# => Either two human players or one human and one computer player
# =>   that chooses randomly.
#
# Normal Mode:
# => The script should support both a human and computer opponent.
#
# Hard Mode:
# => The AI should try to do something intelligent instead of 
#    choosing random moves. I.E "If the board is this, play this".
#
# Nightmare Mode:
# => Make it so the computer will never lose.

MAXTURNS = 9

def greeting
	puts " (*_*)"
	puts "<)  )-    WOULD YOU"
	puts " /  | "

	puts " (*_*)"
	puts "-(  (>    LIKE TO"
	puts " /  | "

	puts " (*_*)/"
	puts "<)  )     PLAY A GAME?"
	puts " /  | "
	puts
end

def play_again?
	puts
	puts "HOW ABOUT A GAME OF TIC TAC TOE? (Y/N)"
	choice = gets.chomp.downcase

	until ["y","n"].include?(choice)
		puts "Please choose 'Y' or 'N'."
		choice = gets.chomp.downcase
	end
	choice == "y"
end

def players
	puts "1 or 2 human players?"
	players = gets.chomp
	pick = nil

	while pick == nil
		if players == "1"
			puts "Enter Name for Player 1"
			player1 = gets.chomp
			player2 = "Computer"
			puts
			puts "#{player1} is X, #{player2} is O"
			puts "Good luck against the Computer #{player1}..."
			pick = "X"
		elsif players == "2"
			puts "Enter Name for Player 1"
			player1 = gets.chomp
			puts "Enter Namer for Player 2"
			player2 = gets.chomp
			puts
			puts "#{player1} is X, #{player2} is O"
			puts "Good Luck"
			pick = "X"
		else
			puts "I SAID 1 OR 2"
			players = gets.chomp
		end
	end
		playernames = [player1,player2]
		return playernames
end

def playgame
	more = play_again?

	while more
		participants = Array.new(2)
		participants = players
		puts "#{participants[0]} LOL"
		puts "#{participants[1]} HA"
		puts
		puts "This is a new game. Board numbers are as follows:"
		board = (0..8).to_a
		show_board(board)

		puts
		puts 
		
		game(board)

		more = play_again?
	end
end

def show_board(board)
	puts
	3.times do |row|
		puts board[row * 3,3].join(" | ")
	end
end

def game(board)

	3.times do |row|
		puts board[row * 3,3].join(" | ")
	end
end

def take_turn(currentplayer)
	puts currentplayer; "Enter your desired location [0-8]: "
	selection = gets.chomp
	if selection <= 8 || selection >=0
	end
	return selection
end 

def tictactoe
	greeting
	playgame

	#participants = Array.new(2)
	#participants = players
	#current_turn = players[0]

end

tictactoe