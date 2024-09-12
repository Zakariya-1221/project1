#This function Generate square numbers within a specified range and save them to a file.
def generate_square_file(start, finish)
    #open the file
    file = File.open("square_numbers.txt", "w")
    #loop through the range of numbers
    (start..finish).each do |num|
        #write the square of the number to the file
        file.write("#{num ** 2}\n")
    end
    #close the file
    file.close
end

#Test Cases
generate_square_file(1, 5) #1, 4, 9, 16, 25
generate_square_file(1, 1) #1
generate_square_file(1, 10) #1, 4, 9, 16, 25, 36, 49, 64, 81, 100