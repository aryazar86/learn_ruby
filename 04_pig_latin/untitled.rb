def translate(phrase)
  new_phrase = ""
  phrase.split(" ").each do |word|
    spot = word.index(/[aeiou]/)
    new_word = ""
    if spot > 0 && spot < 4
      word = word.slice(spot..(word.length-1)) + word.slice(0..(spot-1))
    end
      word << "ay"
      new_phrase << word + " "
  end
    puts "#{new_phrase.chop}"
end

translate("apple")w
translate("banana")
translate("cherry")
translate("eat pie")
translate("three")
translate("school")