module Ispeak
  def says
    "greetings aliens!"
  end
end

module Ieat
  def eats
    "spinach"
  end
end

module Inhabitant
  def says
    "I'm strong to the finish"
  end
end
module Add
  def adding
    puts 'adding extend method'
  end
end

class Human
  extend Ispeak # add class methods from Ispeak
  include Inhabitant # add instance methods from Inhabitant
end

Human.extend Ieat # add class methods from Ieat

puts Human.says # -> greetings aliens!
puts Human.eats # -> spinach

popeye = Human.new

puts popeye.says # -> I'm strong to the finish
popeye.extend(Add)
popeye.adding