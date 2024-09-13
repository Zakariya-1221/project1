# A program to calculate median of a dataset
# After arranging the dataset in ascending order, the median is the middle value of the dataset 

def median(*data)
  len = data.length
  i = 0
  # sorting the data in ascending order
  while i < len
    j = i + 1
    while j < len
      if data[i] > data[j]
        temp = data[i]
        data[i] = data[j]
        data[j] = temp
      end
      j += 1
    end
    i += 1
  end
  # finding the median
  middle = len / 2
  if len % 2 != 0
    return data[middle]
  else
    return ((data[middle] + data[middle - 1])/2.0)
  end
end

#test cases
puts median(20, 56, 1, 59, 3)   # 20
puts median(2, 6, 8, 1, 5, 3, 4, 9)   # 4.5