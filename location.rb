#location.rb

#
#Usage: home = Location.new("Home")
#
class Location
  attr_reader :name

  def initialize(name)
    @name = name
  end
end
