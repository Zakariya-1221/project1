# A program to generate and store a list of all prime numbers less than a given number in a file
def primeList(n)
  # open a file in write mode
  file = File.open("prime_numbers.txt", "w")
  # loop through the numbers from 2 to n
  i = 2
  while i < n
    prime = true
    # check if the number is prime
    j = 2
    while j <= Math.sqrt(i)
      if i % j == 0
        prime = false
        break
      end
      j += 1
    end
    # if the number is prime, write it to the file
    if prime
      file.write(i.to_s + "\n")
    end
    i += 1
  end
  puts "Prime numbers less than #{n} have been saved in prime_numbers.txt"
  # close the file
  file.close
end


# test cases
primeList(30)