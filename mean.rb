
def mean(data)
    return nil if data.empty?
  
    sum = 0
    count = 0
  
    data.each do |num|
      sum += num
      count += 1
    end
  
    sum / count.to_f
end

# Example usage:
# puts mean([1, 2, 3, 4, 5])  # Should output 3.0