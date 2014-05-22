class Bottles
  def song
    verses(99, 0)
  end

  def verses(start, the_end)
    start.downto(the_end).map {|i| verse(i)}.join("\n")
  end

  def verse(num)
    Verse.new(variant_for(num)).to_s
  end

  def variant_for(num)
    case num
    when 0
      VerseVariant0.new(num)
    when 1
      VerseVariant1.new(num)
    when 2
      VerseVariant2.new(num)
    else
      VerseVariant.new(num)
    end
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
    "Take #{pronoun} down and pass it around"
  end

  def how_many
    "#{num}"
  end

  def next_how_many
    "#{num - 1}"
  end

  def pronoun
    'one'
  end

  def containers
    'bottles'
  end

  def next_containers
    'bottles'
  end
end

class VerseVariant0 < VerseVariant
  def what_to_do
    "Go to the store and buy some more"
  end

  def how_many
    'no more'
  end

  def next_how_many
    "99"
  end
end

class VerseVariant1 < VerseVariant
  def containers
    'bottle'
  end

  def pronoun
    'it'
  end

  def next_how_many
    'no more'
  end
end

class VerseVariant2 < VerseVariant
  def next_containers
    'bottle'
  end
end
