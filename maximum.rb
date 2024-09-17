def maximum(data)
    return nil if data.empty?
  
    max = data[0]
  
    data.each do |num|
      max = num if num > max
    end
  
    max
end

# Example usage:
# puts maximum([1, 5, 3, 9, 2])  # Should output 9