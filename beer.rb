#beer.rb

class Beer
  attr_reader :contents

  def initialize(contents = 250)
    @contents = 250
  end

  def sip!
    unless empty?
      print "Slurp... "
      @contents -= 10
      10
    end
  end

  def empty?
    @contents <10
  end

  def full?
    !empty?
  end
end
