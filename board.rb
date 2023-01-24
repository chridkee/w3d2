# require_relative "card"
 
class Board 

    def initialize
        @grid = Array.new(4) {Array.new(4, " ")}
    end 

    def populate
        
    end 

    def grid
      @grid
    end
end

p Board.new.grid



letters = ("a".."h").to_a

p letters 