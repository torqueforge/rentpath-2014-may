class Bottles
  def song
    verses(99, 0)
  end

  def verses(start, the_end)
    start.downto(the_end).map {|i| verse(i)}.join("\n")
  end

  def verse(num)
    Verse.new(VerseVariant.new(num)).to_s
  end
end

class Verse
  attr_reader :variant
  def initialize(variant)
    @variant = variant
  end

  def to_s
    "#{how_many} #{containers} of beer on the wall, ".capitalize +
    "#{how_many} #{containers} of beer.\n" +
    "#{what_to_do}, " +
    "#{next_how_many} #{next_containers} of beer on the wall.\n"
  end

  private

  def what_to_do
    variant.what_to_do
  end

  def how_many
    variant.how_many
  end

  def next_how_many
    variant.next_how_many
  end

  def pronoun
    variant.pronoun
  end

  def containers
    variant.containers
  end

  def next_containers
    variant.next_containers
  end
end

class VerseVariant
  attr_reader :num

  def initialize(num)
    @num = num
  end

  def what_to_do
    if num.zero?
      "Go to the store and buy some more"
    else
      "Take #{pronoun} down and pass it around"
    end
  end

  def how_many
    if num == 0
      'no more'
    else
      "#{num}"
    end
  end

  def next_how_many
    if num == 1
      'no more'
    elsif num == 0
      "99"
    else
      "#{num - 1}"
    end
  end

  def pronoun
    if num == 1
      'it'
    else
      'one'
    end
  end

  def containers
    if num == 1
      'bottle'
    else
      'bottles'
    end
  end

  def next_containers
    if num == 2
      'bottle'
    else
      'bottles'
    end
  end
end
