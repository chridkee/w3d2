# require_relative "card"
# require_relative "board"

class Game 

#last guess 

  def play 
    Until Board.win? == true do 
     
      p Board.new.hidden_grid
      guess = Player.get_position
      first_guess = Board.reveal_card
      second_guess = Board.reveal_card
      if first_guess == second_guess 
        








  end
end



