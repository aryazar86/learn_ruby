class Game

  def score(play)
    
    number_of_turns = play.length-1
    play << 0
    play << 0
    total = 0
    x = 0
    skip = 0

    (number_of_turns).times do
      x += skip
      if play[x] == 10
        if x+1 < number_of_turns
          total += (play[x] + play[x+1] + play[x+2])
          skip = 1
        end
      else 
        if x <= number_of_turns
          if (play[x] + play[x+1]) == 10
            if x + 2 <= number_of_turns
              total += (play[x] + play[x+1] + play[x+2])
            elsif x + 1 <= number_of_turns
              total += play[x] + play[x+1]
            else
              total += play[x]
            end
          elsif x != 20
            total += play[x] + play[x+1]
          end
          skip = 2
        end
      end
    end

    return total
    
  end
end