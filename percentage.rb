# A program to calculate percentage a from b
def percentage(a, b)
  return (a.to_f * 100) / b.to_f
end


#test cases
puts percentage(2, 5)   # 40.0
puts percentage(1, 4)   # 25.0
puts percentage(3, 6)   # 50.0
puts percentage(4, 7)   # 57.142857142857146