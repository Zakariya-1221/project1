def convert_to_binary(decimal)
    binary = decimal.to_s(2)
    puts "Decimal: #{decimal}"
    puts "Binary: #{binary}"
end

puts convert_to_binary(42)    # Expected: Binary: 101010
puts convert_to_binary(255)   # Expected: Binary: 11111111
puts convert_to_binary(1000)  # Expected: Binary: 1111101000