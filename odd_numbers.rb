# Function that generates odd numbers between n1 and n2
def odd_numbers(n1,n2)

  # Checks to see which num is smaller
  if n1 <= n2
    num = n1
    num2 = n2
  else
    num = n2
    num2 = n1
  end

  # Loops through and prints out all the odd numbers
  for i in num..num2
    puts i if (i%2==1) 
  end
end

  odd_numbers(36,24)