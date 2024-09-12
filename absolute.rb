#This function returns the absolute value of a number
def absolute(num)
    #if the number is negative then convert it to positive
    if num < 0
        return num * -1
    end
    return num
end

#Test Cases
puts absolute(-5) #5
puts absolute(10) #10
puts absolute(-3.14) #3.14
