class Formatter < ActiveRecord::Base

  def arrayed
    content.split(/\r\n/)
  end

  def randomize
    arrayed.shuffle
  end

  def alphabetize
    arrayed.sort
  end

  def numberize(array)
    i=0
    array.collect do |word|
      i += 1
      "#{i}. #{word}"
    end
  end

  def format
    if style == "random" && numbered == true
      return numberize(randomize)
    elsif style == "random" && numbered == false
      return randomize
    elsif style == "alpha" && numbered == true
      return numberize(alphabetize)
    elsif style == "alpha" && numbered == false
      return alphabetize
    else
      return ["You did not pick a format. Try again."]
    end
  end

end
