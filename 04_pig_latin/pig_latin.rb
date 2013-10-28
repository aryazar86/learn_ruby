def translate(word)

  arr_of_vowels = ["a", "e", "i", "o", "u", "y"]
  arr_of_word = []

  word.each_char do |x|
    arr_of_word << x
  end

  word = ""

  starts_with_vowel = false
  second_letter_vowel = false

  arr_of_vowels.each do |x|
    if arr_of_word[0] == x
      starts_with_vowel = true
    end
    if arr_of_word[1] == x
      second_letter_vowel = true
    end
  end

  if starts_with_vowel == false
    if second_letter_vowel == false
      arr_of_word.rotate!(2)
    else
      arr_of_word.rotate!
    end
  end

  arr_of_word << "ay"


  arr_of_word.each do |x|
    word << x
  end

  return word
end
