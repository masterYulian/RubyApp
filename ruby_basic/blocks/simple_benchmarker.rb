# frozen_string_literal: true

class SimpleBenchmarker
  def run(description)
    start_time = Time.now
    yield
    end_time = Time.now
    elapsed = end_time - start_time

    puts "\n#{description} results"
    puts "Elapsed time: #{elapsed} seconds"
  end
end

benchmarker = SimpleBenchmarker.new
# First argument should have "string of description"
benchmarker.run 'Any description you want' do
  # Second argument should have anything in block
  10.times do
    puts 'any code you choose'
  end
end
