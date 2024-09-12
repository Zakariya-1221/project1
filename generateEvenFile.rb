#This function Generates even numbers within a specified range and save them to a file.
def generate_even_file(start, finish)
    #open the file
    file = File.open("even_numbers.txt", "w")
    #loop through the range of numbers
    (start..finish).each do |num|
        #if the number is even then write it to the file
        if num % 2 == 0
            file.write("#{num}\n")
        end
    end
    #close the file
    file.close
end

#Test Cases
generate_even_file(1, 10) #2, 4, 6, 8, 10
generate_even_file(1, 1) #empty file
generate_even_file(1, 5) #2, 4