# A program to calculate median of a dataset from a data file
# After arranging the dataset in ascending order, the median is the middle value of the dataset 

def medianDataFile(file)
  # open the file in read mode
  file = File.open(file, "r")
  data = []
  # read the data from the file
  file.each_line do |line|
    data.push(line.to_i)
  end
  file.close
  len = data.length
  if len == 0
    return nil
  end
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
puts medianDataFile("datasetEven.txt")   # 48
puts medianDataFile("datasetOdd.txt")   # 35