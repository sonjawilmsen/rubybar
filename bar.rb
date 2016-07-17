#bar.rb
require './location'

#Usage: bar = Bar.new("The White Horse Tavern")
#dylan = Bartender.new("Dylan Thomas")
#bar.bartender = dylan
#
class Bar < Location
  attr_accessor :bartender
end
