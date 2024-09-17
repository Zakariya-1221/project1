def convert_to_hexadecimal(decimal)
    hexadecimal = decimal.to_s(16)
    puts "Decimal: #{decimal}"
    puts "Hexadecimal: #{hexadecimal}"
end

puts convert_to_hexadecimal(42)    # Expected: Hexadecimal: 2a
puts convert_to_hexadecimal(255)   # Expected: Hexadecimal: ff
puts convert_to_hexadecimal(1000)  # Expected: Hexadecimal: 3e8
