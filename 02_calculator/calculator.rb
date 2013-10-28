def add(num1, num2)
  num1 + num2
end

def subtract(num1, num2)
  num1 - num2
end

def sum(array)
  sum = 0
  array.each do |x|
    sum += x
  end
  sum
end

def multiply(*num)
  i = 1
  num.each do |x| 
    i *= x 
  end
  return i
end

def factorial(n)
  if n == 0 || n == 1
    1
  else
    n * factorial(n-1)
  end
end
