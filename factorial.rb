# This program calculates the factorial of a number using a while loop
# Factorial of a number is the product of all positive integers less than or equal to that number
def factorial(n)
  fact = 1  # a variable to store the factorial of the number
  if n == 0 || n == 1  #if the number is 0 or 1, the factorial is 1
    return 1
  end
  while n > 1   #loop through the numbers from n to 1
      fact = fact * n   #multiply the current value of fact by n
      n -= 1    #decrement n by 1
  end
  return fact   #return the factorial of the number
end

# Test cases
puts factorial(0)   # 1
puts factorial(5)   # 120
puts factorial(1)   # 1