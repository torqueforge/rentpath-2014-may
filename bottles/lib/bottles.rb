class Bottles
  def song
    verses(99, 0)
  end

  def verses(start, the_end)
    start.downto(the_end).map {|i| verse(i)}.join("\n")
  end

  def verse(bottle_number)
    "#{how_many(bottle_number)} #{containers(bottle_number)} of beer on the wall, ".capitalize +
    "#{how_many(bottle_number)} #{containers(bottle_number)} of beer.\n" +
    "#{what_to_do(bottle_number)}, " +
    "#{how_many(bottle_number-1)} #{containers(bottle_number-1)} of beer on the wall.\n"
  end

  private
  def what_to_do(bottle_number)
    if bottle_number.zero?
      "Go to the store and buy some more"
    else
      "Take #{pronoun(bottle_number)} down and pass it around"
    end
  end

  def how_many(bottle_number)
    if bottle_number.zero?
      'no more'
    elsif bottle_number < 0
      "99"
    else
      "#{bottle_number}"
    end
  end

  def pronoun(bottle_number)
    if bottle_number == 1
      'it'
    else
      'one'
    end
  end

  def containers(bottle_number)
    if bottle_number == 1
      'bottle'
    else
      'bottles'
    end
  end
end
