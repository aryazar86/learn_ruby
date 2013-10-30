class RPNCalculator < Array

  def raise_error
    if self.length <= 1
      raise "calculator is empty"
      return false
    else
      return true
    end
  end

  def tokens(string)
    arr = string.split
    arr.map! { |x| 
      if x.to_i.to_s != x
        x.to_sym 
      else
        x.to_i
      end
      }
    return arr
  end

  def evaluate(string)
    string.split.each do |x|
      case x
      when "+"
        plus
      when "-"
        minus
      when "*"
        times
      when "/"
        divide
      else
        self.push(x.to_i)
      end
    end
    self.last
  end

  def plus
    self.push(self.pop + self.pop) if raise_error
  end

  def minus
    if raise_error
      arr = self.pop(2)
      self.push(arr[0] - arr[1])
    end
  end

  def divide
    if raise_error
      arr = self.pop(2)
      self.push(arr[0].to_f / arr[1].to_f)
    end
  end

  def times
    self.push(self.pop * self.pop) if raise_error
  end

  def value
    self.last
  end

end