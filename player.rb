class Player


def initialize()
    @player = player 
end

def get_position
    p "enter a valid position in the form `row col` like `0 1`"
    gets.chomp.split.map(&:to_i)
end




end