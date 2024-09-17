# A program to calculate percentage a from b
def percentage(a, b)
  return (a.to_f * 100) / b.to_f
end


#test cases
puts percentage(2, 5)   # 40.0
puts percentage(1, 4)   # 25.0
puts percentage(3, 6)   # 50.0
puts percentage(4, 7)   # 57.142857142857146
puts percentage(5.3, 8)  # 66.25
puts percentage(6, 9.1)   # 65.93406593406593
puts percentage(7.3, 8.1) # 90.12345679012346