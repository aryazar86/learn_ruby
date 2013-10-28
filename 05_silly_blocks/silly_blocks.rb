def reverser

  arr = yield.split(" ")
  arr.each do |x| 
    x.reverse!
  end

  arr.join(" ")

end

def adder(addition = 1)
  num = yield + addition
end

def repeater(iterator=1)
  num = 0
  (1..iterator).each do |x|
  num += yield
  end
end
