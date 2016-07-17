#Person.rb
#
#Usage: ruby = Person.new("Ruby")
#
class Person
  attr_reader :name, :drinks

  def initialize(name)
    @name = name
    @drinks = []
  end

  def enter(bar)
    @location = bar

    puts "\n #{name} just entered a #{@location.class} #{@location.name}\n\n"
  end

  def say(text)
   puts "<<#{name}>>: #{text}"
   end

   def greet(person)
     say "Hi, #{person.name}!"
   end

   def order_drink!
     @location.bartender.serve(self)
   end

   def drink!
     if unfinished_drinks.any?
       drink = unfinished_drinks.last
       puts "\n  #{name} starts to drink a #{drink.class}... \n\n"

       while drink.full?
         drink.sip!
         sleep 0.2
       end

       puts "\n\n  #{name} finished #{drink.class} number #{finished_drinks.size}\n\n"
     end
   end

   def finished_drinks
     @drinks.select{|d| d.empty? }
   end

   def unfinished_drinks
     @drinks.reject{|d| d.empty? }
   end

   def drunk?
     finished_drinks.size >= 5
   end

   def leave
     @location = nil
   end

   def go_home
     enter Location.new("Home")
   end
end
