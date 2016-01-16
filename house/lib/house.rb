class House
  attr_reader :line_start

  def initialize(line_start="This is")
    @line_start = line_start
  end

  def recite
    (1..pieces.length).map {|i| line(i)}.join("\n")
  end

  def line(number)
    "#{line_start} %s.\n" % pieces.last(number).join(' ')
  end

  private

  def pieces
    [
      'the horse and the hound and the horn that belonged to',
      'the farmer sowing his corn that kept',
      'the rooster that crowed in the morn that woke',
      'the priest all shaven and shorn that married',
      'the man all tattered and torn that kissed',
      'the maiden all forlorn that milked',
      'the cow with the crumpled horn that tossed',
      'the dog that worried',
      'the cat that killed',
      'the rat that ate',
      'the malt that lay in',
      'the house that Jack built',
    ]
  end
end
