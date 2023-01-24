# require_relative "card"
 
class Board 
  def initialize
    @grid = generate_random_rows
    @hidden_grid = Array.new(4) {Array.new(4, "_")}
  end
 
  def grid
    @grid
  end

  def print_board
    @grid.each do |row|
      puts row.join(" ")
    end
  end

  def hidden_grid
    @hidden_grid
  end
  
  def win? 
    if @hidden_grid == @grid 
      return true 
      p "You Win"
    else
      return false 
  end


  def [] (position)
    [row, column] = position 
    @grid[row, column] 
  end

  def set (position, value)
    self[position[0]][position[1]] = value 
  end

  def reveal_card 
    @hidden_grid.set(guess, @grid[guess[0]][guess[1]])
    
  end
    

  def generate_random_rows 
    randoms = randomize_letters
    row1 = []
    row2 = []
    row3 = []
    row4 = []
    (0..3).each do |i|
      row1 <<randoms[i]
    end
    (4..7).each do |i|
      row2 << randoms[i]
    end
    (8..11).each do |i|
      row3 << randoms[i]
    end
    (12..15).each do |i|
      row4 << randoms [i]
    end
    return [row1, row2, row3, row4]
  end

  def randomize_letters
    letters = ("a".."h").to_a 
    double = letters.concat(letters) 
    shuffled = double.shuffle
    return shuffled
  end
end 
    









p Board.new.hidden_grid

#   def initialize(grid_size=4)
#     @grid = Array.new(grid_size) {Array.new(grid_size, " ")}
#   end

#   def shuffled_letters
#     sorted = []
#     (1..8).each do |i|
#       sorted << i
#       sorted << i
#     end 
#     sorted
#   end 

#   letters = (a..h)
  
# def test
#   8.times do 
#     p "hello"
#   end
# end

#   require "byebug"

#   def initialize
#     @grid = Array.new(4) {Array.new(4, "str")}
#   end 

#   def all_spaces_filled?(array) 
#     flat = array.flatten
#     flat.any? {|ele| ele == "str"}
#   end
# debugger
#   def populate
#     letters = ("a".."h").to_a
#     until all_spaces_filled?(@grid)
#       @grid.map! do |row|
#         row.map! do |ele|
#           ele = letters.sample
#         end
#       end
#     end 
#   end
        
#     def grid
#       @grid
#     end

    
  
  
# end
# b = Board.new.populate
# p b.grid
      
      # if @grid[idx1][idx2] == " "
      #   @grid[idx1][idx2] = letter


   # def cardcount
        #   count = Hash.new(0)
        #   letters.each do |card|
        #     count[card] += 1
        #   end 

        # idx1 = rand(0..3)
      # idx2 = rand(0..3)


