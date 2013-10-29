class Temperature
  def initialize(temp)
    @fahrenheit = temp[:f]
    @celsius = temp[:c]
  end

  def to_fahrenheit
      @fahrenheit = (@celsius * (9.0/5.0)) + 32 if @fahrenheit == nil
      return @fahrenheit
  end

  def to_celsius
    @celsius = (@fahrenheit - 32) * (5.0/9.0) if @celsius == nil
    return @celsius
  end

  def self.in_celsius(temp)
    Temperature.new({:c => temp})
  end

  def self.in_fahrenheit(temp)
    Temperature.new({:f => temp})
  end
end

class Celsius < Temperature

  def initialize(temp)
    @celsius = temp
  end

end

class Fahrenheit < Temperature

  def initialize(temp)
    @fahrenheit = temp
  end

end