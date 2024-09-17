# Part of calculator project
# A function to evaluate a postfix expression to get the result

def evaluatePostfixExpression(postfixStack)
  stack = []  # create an empty stack
  # iterate through the expression
  postfixStack.each do |token|
    # if the token is an operand(digit), push it to the stack
    if token.match(/\d+/)
      stack.push(token.to_i)
    else # if the token is an operator
      operand2 = stack.pop
      operand1 = stack.pop
      # perform the arithmetic operations and push the result to the stack`
      case token
      when '*'
        stack.push(operand1 * operand2)
      when '/'
        if operand2 == 0
          return "ERROR: Division by zero"
        else
          stack.push(operand1 / operand2)
        end
      when '%'
        stack.push(operand1 % operand2)
      when '+'
        stack.push(operand1 + operand2)
      when '-'
        stack.push(operand1 - operand2)
      end
    end
  end
  stack.pop
end

# test cases
puts evaluatePostfixExpression(["4", "2", "+", "5", "4", "-", "*"])   # 6
puts evaluatePostfixExpression(["4", "2", "+", "4", "4", "-", "/"])   # ERROR: Division by zero
puts evaluatePostfixExpression(["4", "2", "+", "6", "1", "-", "%"])   # 1
puts evaluatePostfixExpression(["4", "2", "+", "5", "1", "-", "%"])   # 2
puts evaluatePostfixExpression(["0", "2", "*"])   # 0
puts evaluatePostfixExpression(["0", "2", "+"])   # 2
puts evaluatePostfixExpression(["1", "2", "-"])   # -1
puts evaluatePostfixExpression(["-1", "-2", "+"])   # -3
