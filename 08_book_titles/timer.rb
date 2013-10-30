class Timer

  TIMES = [3600, 60, 1]

  def seconds=(amount_of_seconds)
    @the_seconds = amount_of_seconds
  end

  def seconds
    @the_seconds = 0 if @the_seconds == nil
  end

  def time_string
    string_of_time = ""
    (0..2).each do |x| 
      if @the_seconds/TIMES[x] >= 1
        multiplier = @the_seconds/TIMES[x]
        if multiplier < 10
          string_of_time << "0"
        end
        string_of_time << multiplier.to_s
        @the_seconds -= (TIMES[x]*multiplier)
      else
        string_of_time << "00"
      end
    string_of_time << ":"
    end
    return string_of_time.chop
  end
  
end