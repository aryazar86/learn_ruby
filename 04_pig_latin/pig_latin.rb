def translate(phrase)
  new_phrase = ""
  phrase.split(" ").each do |word|
    spot = word.index(/[aeiou]/).to_i
    spot = 0 if spot == nil
    if word[spot-1] == "q" && spot-1 >= 0
      word = word.slice((spot+1)..(word.length-1)) + word.slice(0..spot)
    elsif spot > 0 && spot < 4
      word = word.slice(spot..(word.length-1)) + word.slice(0..(spot-1))
    end
      word << "ay"
      new_phrase << word + " "
  end
    new_phrase.chop
end