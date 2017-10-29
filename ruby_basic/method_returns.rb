# frozen_string_literal: true

def subtract(first, second)
  first - second
end

number = 9
puts number # 9
number = subtract(number, 1)
puts number # 8
number = subtract(number, 1)
puts number # 7
############################
def ask(question)
  print question
  # "gets" returns a string the user types.
  # Because the call to "gets" is the last
  # expression in the "ask" method, the
  # return value of "gets" becomes the
  # return value of "ask".
  gets
end

puts 'Welcome to the widget store!'
answer = ask('How many widgets are you ordering?')
puts answer # Prints whatever the user typed.
