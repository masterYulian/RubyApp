# frozen_string_literal: true

require './hienaa'
puts "I make some substitutions: #{2 + 4}"

def ask(question)
  print question + ' '
  gets.chomp
end

puts 'Welcome to the widget store!'
answer = ask('How many widgets are you ordering?')
# answer.delete!("\n")
result = "You entered #{answer} widgets"
print(result + ' sfsdf' + "\n")

puts answer.inspect

# inspecting values
# p "     "
# p ""
# p nil
# p []

###########
# Newline: \n
# Tab: \t
# Double-quotes: \"
# Single-quote: \'
# Backslash: \\

puts "first line\nsecond line"
puts "\tindented text"
puts 'He said, "Whoa."'

for i in 0..10
  puts answer[i]
end
