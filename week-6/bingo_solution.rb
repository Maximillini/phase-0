# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [12] hours on this challenge. Did not finish.


# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
# 1. Create a list of letters containing b, i, n, g, and o
# 2. Pull random number, shift to string, add to letter

# Check the called column for the number called.

# If the number is in the column, replace with an 'x'

# Display a column to the console
  #Collect every first number of the rows into a new list, and so on for each
  #number in each row.

# Display the board to the console (prettily)
  #My idea was to display the board one line at a time to make it more visually appealing,
  #but keep it in the arrays so that it gave it the effect of borders around the outside.

# Initial Solution
=begin
class BingoBoard

  def initialize(board)
    @bingo_board = board
    @letters = ["b", "i", "n", "g", "o"]
    @r_letter = rand(0..4)
    @r_num = 75
    @b = 0
    @i = 1
    @n = 2
    @g = 3
    @o = 4
    @column = board.map {|row| row[x]}
#     @b = board.map {|row| row[0]}
#     @i = board.map {|row| row[1]}
#     @n = board.map {|row| row[2]}
#     @g = board.map {|row| row[3]}
#     @o = board.map {|row| row[4]}
  end

  def board
    sleep 0.2 
    p "B   I   N   G   O" 
    @bingo_board.each { |row| sleep 0.4; p row }
  end
  
  def call
    p @call = @letters[@r_letter].upcase + @r_num.to_s
  end
  
  def coordinates
    @bingo_board.map.each_with_index do |val, index|
      if val == @r_num
       @bingo_board[index][@r_letter] = "X"
      end
    end
  end
      
  def check
    if @r_letter == 0
      x = 0
      coordinates(@column)
    elsif @r_letter == 1
      x = 1
      coordinates(@column)
    elsif @r_letter == 2
      x = 2
      coordinates(@column)
    elsif @r_letter == 3
      x = 3
      coordinates(@column)
    elsif @r_letter == 4
      x = 4
      coordinates(@column)
    end
  end
    

  def column(letter)
    if letter.downcase == "b"
      puts "B" 
      puts @bingo_board.map {|row| row[0]}
    elsif letter.downcase == "i"
      puts "I"
      puts @bingo_board.map {|row| row[1]}
    elsif letter.downcase == "n"
      puts "N"
      puts @bingo_board.map {|row| row[2]}
    elsif letter.downcase == "g"
      puts "G"
      puts @bingo_board.map {|row| row[3]}
    elsif letter.downcase == "o"
      puts "O"
      puts @bingo_board.map {|row| row[4]}
    else 
      raise ArgumentError.new("Enter one of the following: B, I, N, G, O")
    end
  end 
end

# Refactored Solution


#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)

# new_game.call
# new_game.column("b")
new_game.call
new_game.check
new_game.board
=end

class BingoBoard

  def initialize(board)
    @board = board
    @columns = [0, 1, 2, 3, 4]
    @rand_num = rand(1..100)
    @rand_letter = @columns.shuffle[0]
    @b = board.map {|row| row[0]}
    @i = board.map {|row| row[1]}
    @n = board.map {|row| row[2]}
    @g = board.map {|row| row[3]}
    @o = board.map {|row| row[4]}
  end
  
  def board
    sleep 0.2 
    p "B   I   N   G   O" 
    @board.each { |row| sleep 0.4; p row }
  end
  
  def call
    p @rand_letter
    p @rand_num
  end
  
  def check
    if @rand_letter == 0
      @b.each_with_index do |val, index|
        if val == @rand_num
          p @board = @board[index][0] = "X"
        end
      end
    end
    if @rand_letter == 1
      @i.each_with_index do |val, index|
        if val == @rand_num
         p @board[index][1] = "X"
        end
      end
    end
    if @rand_letter == 2
      @n.each_with_index do |val, index|
        if val == @rand_num
         p @board[index][2] = "X"
        end
      end
    end
    if @rand_letter == 3
      @g.each_with_index do |val, index|
        if val == @rand_num
         p @board[index][3] = "X"
        end
      end
    end
    if @rand_letter == 4
      @o.each_with_index do |val, index|
        if val == @rand_num
         p @board[index][4] = "X"
        end
      end
    end
  end
    
end

board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]


new_game = BingoBoard.new(board)
  new_game.call
  new_game.check
new_game.board

=begin
#Reflection
#
#Obviously my code is a big mess right now. I was unable to finish due to over-complicating my solution
and following too many dead end ideas to solve the problem.

I know how to collect each column to a new array, and then check that for the value, even though my solution
for that is sloppy, ugly, and not DRY by any stretch of the imagination. I can even get a X to appear
on the original Bingo board, but I cannot make it permanent and I can't think of how to do it. You can
see my main solution on lines 150-183, which takes the array created for each column and uses that to
get the index (row) and column to provide coordinates.

I believe this is a dead end, however, because I think the way to get the board to permanently acquire
an X in place of the number is to use .map!. But I can't seem to fit that in anywhere that I can tell
with my initial solution, requiring me to start over again for a third time, which is where I ran out
of time.
=end