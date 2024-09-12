#This function raises the first number to the power of the second number without using built in functions
def exponent(num, power)
    #if the power is 0 then return 1 for any number
    if power == 0
        return 1
    end

    result = 1
    #if the power is negative then find the reciprocal of the number and multiply it by itself power times
    if power < 0
        newNum = 1.0 / num
        #if the power is negative then convert it to positive and multiply the number by itself power times
        newPower = power * -1
        newPower.times do
            result *= newNum
        end
    else
        #if the power is positive then multiply the number by itself power times
        power.times do
            result *= num
        end
    end
    return result
end

#Test Cases
puts exponent(2, 3) #8
puts exponent(5, -2) #
puts exponent(2, 6) #1