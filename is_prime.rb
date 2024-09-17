#This function returns whether or not a number is prime
def is_prime(n)
  root = Math.sqrt(n).to_i
  # 1 and 0 are not prime
  return false if n < 2

  for i in 2..root
    return false if (n % i) == 0
  end
  return true
end

puts is_prime(72) #false
puts is_prime(73) #true
puts is_prime(63) #false
