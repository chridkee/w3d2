# require_relative "card"
 
class Board 

    def initialize
        @grid = Array.new(4) {Array.new(4, " ")}
    end 

    def populate
      letters = ("a".."h").to_a
      
      idx1 = rand(0..3)
      idx2 = rand(0..3)

      until @grid[idx1][idx2] != " " do
        letters.each do |letter|

          
        end 
        
        def grid
          @grid
        end
        
        # def cardcount
        #   count = Hash.new(0)
        #   letters.each do |card|
        #     count[card] += 1
        #   end 
          
      end
      
      p Board.new.grid
      
      
      # if @grid[idx1][idx2] == " "
      #   @grid[idx1][idx2] = letter




p letters 

