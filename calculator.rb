class Calculator
  def hash_key_criteria input_hash
    temp = input_hash
    result = temp.select { |key, value| key.to_s.length > 3 }
    result =result.keys
    puts result
  end
end
calculator = Calculator.new
calculator.hash_key_criteria({"ap" => "fruit", "carrot" => "vegetable"})