def convert_to_octal(decimal)
    octal = decimal.to_s(8)
    puts "Decimal: #{decimal}"
    puts "Octal: #{octal}"
end

puts convert_to_octal(42)    # Expected: Octal: 52
puts convert_to_octal(255)   # Expected: Octal: 377
puts convert_to_octal(1000)  # Expected: Octal: 1750