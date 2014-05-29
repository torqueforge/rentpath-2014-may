class Bottles
  def song
    verses(99, 0)
  end

  def verses(upper_bound, lower_bound)
    upper_bound.downto(lower_bound).map {|i| verse(i)}.join("\n")
  end

  def verse(number)
    bottle_number = number.to_bottle_number
    "#{bottle_number} of beer on the wall, ".capitalize +
    "#{bottle_number} of beer.\n" +
    "#{bottle_number.action}, " +
    "#{bottle_number.next} of beer on the wall.\n"
  end
end

class Fixnum
  def to_bottle_number
    if Object.const_defined?("BottleNumber#{self}")
      Object.const_get("BottleNumber#{self}")
    else
      BottleNumber
    end.new(self)
  end
end

class BottleNumber
  attr_reader :number
  def initialize(number)
    @number = number
  end

  def to_s
    "#{name} #{container}"
  end

  def name
    number.to_s
  end

  def container
    'bottles'
  end

  def action
    "Take #{pronoun} down and pass it around"
  end

  def next
    (number - 1).to_bottle_number
  end

  private

  def pronoun
    'one'
  end
end

class BottleNumber1 < BottleNumber
  def container
    'bottle'
  end

  private

  def pronoun
    'it'
  end
end

class BottleNumber0 < BottleNumber
  def name
    'no more'
  end

  def action
    "Go to the store and buy some more"
  end

  def next
    99.to_bottle_number
  end
end
