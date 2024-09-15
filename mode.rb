# Function that finds the mode in a set
def mode(arr)
  # Creates a hash and stores the occurances of each number
  num = {}
  for i in arr
    if num.key?(i)
      num[i] += 1
    else
      num[i] = 1
    end
  end
  mode = 0
  index = 0

  # Loops through the hash and find the number with the greatest number of occurences
  num.each do |key, value|
    index = key if value > mode
    mode = value
  end
  return index
end

arr = [1,3,4,3,2,2,2]
puts mode(arr) #2