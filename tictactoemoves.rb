require "pry"

def game(board)

	2.times do |row|
		puts board[row * 3,3].join(" | ")
		puts "---------"
	end
	puts board[6,3].join(" | ")
end

def play_game
end

def tictactoe
	turncount = 0
	turncheck = "X"

	puts
	board = ["0","1","2","3","4","5","6","7","8"]
	game(board)
	puts
	board = [" "," "," "," "," "," "," "," "," "]

	until turncount == 9
		if turncount.odd?
			currentsymbol = "X"
			currentplayer = "Bob"
		elsif turncount.even?
			currentsymbol = "O"
			currentplayer = "Mitch"
		end

		puts "#{currentplayer} please enter your desired location [0-8]: "
		location = gets.chomp.to_i

		if location < 0 || location > 8
			puts "Between [0-8] Please"
			location = gets.chomp
		else
			board[location] = currentsymbol
			game(board)
			turncount += 1
			turncheck = nil
		end
	end
end

tictactoe