# Function that returns the minimum in a set
def minimum(arr)
  min = arr[0]
  len = arr.length - 1
  # Loops through to find the smallest number
  for i in 1..len
    min = arr[i] if arr[i] < min
  end

  return min
end

arr = [5, 4, 3, 2, 1]
puts minimum(arr)