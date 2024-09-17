#This function tokenizes the input expression and returns the tokens
def tokenize(expression)
    # Remove all whitespace characters from the expression
    expression_without_spaces = expression.gsub(/\s+/, '')
    
    # Scan the expression for numbers, operators, and parentheses
    # \d+ matches one or more digits (a number)
    # \+|\-|\*|\/ matches any of the operators +, -, *, /
    # \(|\) matches a left or right parenthesis
    # The result is an array of strings, each string being a number, operator, or parenthesis
    tokens = expression_without_spaces.scan(/\d+|\+|\-|\*|\/|\(|\)/)
end