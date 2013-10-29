class Book

  def title=(string)
    @book_title = string
  end

  def title

    arr = @book_title.split
    @book_title = ""

    arr.each do |x| 
      x.capitalize! if arr.index(x) == 0 || x != "the" && x != "a" && x != "an" && x != "and" && x != "of" && x != "in" if x.to_i.to_s != x
      @book_title << x + " "
    end
    
    @book_title.chop
  
  end

end
