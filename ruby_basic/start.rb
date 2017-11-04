# frozen_string_literal: true

require 'pry'

puts('a', 'b') # other from new line
sleep(1)
binding.pry
print('a', 'b', 7, 8) # print all in one line
puts
a = 10
puts(a+1)