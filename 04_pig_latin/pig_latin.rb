def translate(word)

  arr_of_vowels = ["a", "e", "i", "o", "u"]
  arr_of_word = []
  arr_of_phrase = []
  word << " "

  word.each_char do |x|
    if x != " "
      arr_of_word << x

    else

      if arr_of_word[0] + arr_of_word[1] == "qu"
        
        qu_vowel = false

        arr_of_vowels.each do |x|
          if arr_of_word[2] == x
            qu_vowel = true
          end
        end

        if qu_vowel == true
           arr_of_word.rotate!(2)
        else 
           arr_of_word.rotate!(3)
        end

      else

        starts_with_vowel = false
        second_letter_vowel = false
        third_letter_vowel = false

        arr_of_vowels.each do |x|

          if arr_of_word[0] == x
            starts_with_vowel = true
          end
          if arr_of_word[1] == x
            second_letter_vowel = true
          end
          if arr_of_word[2] == x
            third_letter_vowel = true
          end

        end

        if starts_with_vowel == false
          if second_letter_vowel == false 
            if third_letter_vowel == false
              arr_of_word.rotate!(3)
            else
            arr_of_word.rotate!(2)
            end
          else
            arr_of_word.rotate!
          end
        end
      end

      arr_of_word << "ay"

      arr_of_word.each do |x|
        arr_of_phrase << x
      end

      arr_of_phrase << " "
      arr_of_word.clear
    end
  end
  
  word = ""

  arr_of_phrase.each do |x|
    word << x
  end

  return word.chop
end