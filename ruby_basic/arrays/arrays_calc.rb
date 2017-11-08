# frozen_string_literal: true

class ArraysCalc
  def getAllOnes
    puts (1..100).to_a.join.count('1')
  end

  def getWordsLenghts
    @ar = %w[avb avvvv]
    puts @ar.map(&:size)
  end

  def getSumByEach
    @sum = 0
    @ar = Array.new(100) { rand(1...10) }
    puts 'Array data:'
    print "#{@ar}\n"
    puts "Array size = #{@ar.size}"
    @ar.each { |e| @sum += e }
    puts @sum
  end

  def getSumByInject
    @sum = 0
    @ar = Array.new(100) { rand(1...10) }
    puts 'Array data:'
    print "#{@ar}\n"
    puts "Array size = #{@ar.size}"
    @sum = @ar.inject { |sum, e| sum + e }
    puts @sum
  end

  def getIncludeWordByFind
    p 'yes' if 'WE have mother word'.to_s.split.find { |el| el == 'mother'.downcase }
  end

  def getSumLastThreeNumbers
    p num = 1231231.to_s.chars.last(3).join.chars.map(&:to_i).reduce(:+)
  end
end

res = ArraysCalc.new
res.getSumLastThreeNumbers
