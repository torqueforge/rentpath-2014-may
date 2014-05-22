class Bottles
  def song
    verses(99, 0)
  end

  def verses(start, the_end)
    start.downto(the_end).map {|i| verse(i)}.join("\n")
  end

  def verse(num)
    "#{how_many(num)} #{containers(num)} of beer on the wall, ".capitalize +
    "#{how_many(num)} #{containers(num)} of beer.\n" +
    "#{what_to_do(num)}, " +
    "#{how_many(num-1)} #{containers(num-1)} of beer on the wall.\n"
  end

  private
  def what_to_do(num)
    if num.zero?
      "Go to the store and buy some more"
    else
      "Take #{pronoun(num)} down and pass it around"
    end
  end

  def how_many(num)
    if num.zero?
      'no more'
    elsif num < 0
      "99"
    else
      "#{num}"
    end
  end

  def pronoun(num)
    if num == 1
      'it'
    else
      'one'
    end
  end

  def containers(num)
    if num == 1
      'bottle'
    else
      'bottles'
    end
  end
end
