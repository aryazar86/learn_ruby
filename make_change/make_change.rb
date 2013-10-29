class Changer

  CHANGE = [25, 10, 5, 1]

  def self.make_change(amount)

    arr = []

    (0..3).each do |x|
      if amount/CHANGE[x] > 0
        (amount/CHANGE[x]).times { arr << CHANGE[x] }
        amount -= (arr.count(CHANGE[x]) * CHANGE[x])
      end
    end

    return arr
  end

end 