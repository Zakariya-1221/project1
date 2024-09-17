def generate_fibonacci(limit)
    fib = [0, 1]
    while fib[-1] + fib[-2] <= limit
      fib << fib[-1] + fib[-2]
    end
    fib
  end
  
  def save_fibonacci_to_file(limit, filename)
    fib_numbers = generate_fibonacci(limit)
    
    File.open(filename, 'w') do |file|
      fib_numbers.each { |num| file.puts(num) }
    end
end

# Example usage:
# save_fibonacci_to_file(100, 'fibonacci.txt')