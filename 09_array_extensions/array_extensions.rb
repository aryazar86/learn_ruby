class Array

  def sum
    total = 0
    self.each do |x| total += x end 
    return total
  end

  def square
    arr = []
    if self.empty? 
      return self
    else
    self.each do |x| arr << x*x end 
    return arr
    end
  end

  def square!
    if self.empty? 
      return self
    else
      self.map! do |x| x*x end 
      return self
    end
  end
end