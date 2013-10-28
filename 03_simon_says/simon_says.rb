def echo(word)
  return word
end

def shout(word)
  return word.upcase
end

def repeat(word, n=2)
  statement = ""
  (1..n).each do 
    statement += "#{word} "
  end
  return statement.chomp(" ")
end

def start_of_word(word, n)
  word[0..n-1]
end

def first_word(word)
  word.split[0]
end

def titleize(sentence)
  arr = sentence.split
  sentence = ""
  arr[0].capitalize!
  arr.each do |x|
    if x != "over" && x != "and" && x != "the"
      x.capitalize!
    end
    sentence << x + " "
  end
  return sentence.chop
end