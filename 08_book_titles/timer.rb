class Timer

  def seconds=(amount_of_seconds)
    @the_seconds = amount_of_seconds
  end

  def seconds
    @the_seconds = 0 if @the_seconds == nil
  end

  def time_string

    string_of_time = ""

    if @the_seconds/3600 >= 1
      hours = (@the_seconds/3600).floor
      if hours < 10
        string_of_time << "0"
      end
      string_of_time << hours.to_s
      @the_seconds -= (3600*hours)
    else
      string_of_time << "00"
    end

    string_of_time << ":"

    if @the_seconds/60 >= 1
      minutes = (@the_seconds/60).floor
      if minutes < 10
        string_of_time << "0"
      end
      string_of_time << minutes.to_s
      @the_seconds -= (60*minutes)
    else
      string_of_time << "00"
    end

    string_of_time << ":"

    if @the_seconds < 60 && @the_seconds != 0
      if @the_seconds < 10
        string_of_time << "0"
      end
      string_of_time << @the_seconds.to_s
    else
      string_of_time << "00"
    end 
    return string_of_time
  end
end