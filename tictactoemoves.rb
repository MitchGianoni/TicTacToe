require "pry"

def game(board)

	2.times do |row|
		puts board[row * 3,3].join(" | ")
		puts "---------"
	end
	puts board[6,3].join(" | ")
end

def win?(board,currentplayer)
	if board[0] == board[1] && board[1] == board[2]
		puts
		puts "#{currentplayer} wins!"
		win = true
	elsif board[3] == board[4] && board[4] == board[5] 
		puts
		puts "#{currentplayer} wins!"
		win = true
	elsif board[6] == board[7] && board[7] == board[8] 
		puts
		puts "#{currentplayer} wins!"
		win = true
	elsif board[0] == board[3] && board[3] == board[6] 
		puts
		puts "#{currentplayer} wins!"
		win = true
	elsif board[1] == board[4] && board[4] == board[7] 
		puts
		puts "#{currentplayer} wins!"
		win = true
	elsif board[2] == board[5] && board[5] == board[8] 
		puts
		puts "#{currentplayer} wins!"
		win = true
	elsif board[0] == board[4] && board[4] == board[8] 
		puts
		puts "#{currentplayer} wins!"
		win = true
	elsif board[2] == board[4] && board[4] == board[6] 
		puts
		puts "#{currentplayer} wins!"
		win = true
	else 
		win = false
	end
	return win
end

def game_over?(board, currentplayer, turncount)
	if win?(board,currentplayer) == true
		"#{currentplayer} wins."
		return true
	elsif turncount > 9
		puts "You are out of turns."
		return true
	else
		return false
	end
end


def play_game(board)
		turncount = 0
		currentplayer = "Mitch"
	until game_over?(board, currentplayer, turncount)
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
		end
	end
	game(board)
end

def tictactoe


	puts
	board = ["0","1","2","3","4","5","6","7","8"]
	game(board)
	play_game(board)
end

tictactoe