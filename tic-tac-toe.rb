# Mitch Gianoni
# Tic-Tac-Toe
# Easy Mode Submission
#
# I've submitted a working copy of Easy mode so that I can complete 
# the assignment on time. I plan on writing up a computer player to 
# complete on Nightmare mode when I have more time.

require "pry"

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
	elsif turncount == 9
		puts "You are out of turns. Nobody wins."
		return true
	else
		return false
	end
end

def play_game(board)
		turncount = 0
		coinflip = ["Heads", "Tails"]
		who = coinflip[rand(coinflip.length)]
		if who == "Heads"
			currentplayer = "Player 1"
			currentsymbol = "X"
		else
			currentplayer = "Player 2"
			currentsymbol = "O"
		end	

	until game_over?(board, currentplayer, turncount)
		puts "#{currentplayer} you are #{currentsymbol} please enter your desired location [0-8]: "
		location = gets.chomp.to_i
		condition = nil
		while condition == nil
			if location < 0 || location > 8
				puts "Between [0-8] Please"
				location = gets.chomp.to_i
			elsif board[location] == "X" || board[location] == "O"
				puts "Space already taken, choose another location [0-8]:"
				location = gets.chomp.to_i
			else
				board[location] = currentsymbol
				game(board)
				turncount += 1
				condition = 1
			end 
		end
		if turncount.odd?
			currentsymbol = "X"
			currentplayer = "Player 1"
		elsif turncount.even?
			currentsymbol = "O"
			currentplayer = "Player 2"
		end
	end
	game(board)
end

def tictactoe


	puts
	board = ["0","1","2","3","4","5","6","7","8"]
	greeting
	game(board)
	play_game(board)
end

tictactoe