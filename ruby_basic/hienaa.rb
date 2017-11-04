# frozen_string_literal: true

class Box
  @countSelfObjects

  def initialize(w, h)
    @width = w
    @height = h
    @countSelfObjects += 1
  end

  def self.printCount
    puts "Box count is : #{@countSelfObjects} #{wi}"
  end

  def printWTF
    puts 'wtf'
  end

  # instance method
  def getArea
    5*5
  end
end
