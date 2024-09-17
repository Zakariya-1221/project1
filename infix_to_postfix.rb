# Order of precedence for the operators with 1 being the highest and 3 being the lowest
PRECEDENCE = {
  '^' => 1, # Highest
  '*' => 2, # Middle
  '/' => 2, # Middle
  '+' => 3, # Lowest
  '-' => 3 # Lowest
}

# Function that turns an infix to postfix expression using Shunting yard algorithm

def infix_to_postfix(tokens)
  
  # Initialize an empty stack and an empty output
  
  stack = [] # Stack
  postfix = [] # Output

  # Run a loop for each element in tokens 
  tokens.each do |token|

    # Add the token to the output if it's a number
    if token =~ /\d+/
      postfix << token

    # Call check_stack if the token is an operator and not a parenthesis
    elsif token != '(' && token != ')'
      check_stack(token, stack, postfix)

    # Push token onto stack if it's a left parenthesis  
    elsif token == '('
      stack.push(token)

    # If the token is a right parenthesis, pop tokens from the stack onto the output until a left parenthesis is popped
    elsif token == ')'
      postfix << stack.pop until stack.last == '('
      stack.pop
    end
  end

  # Pop the remaining stack onto the output
  postfix << stack.pop until stack.empty?
    
  return postfix
end

# Function that checks whether or not to push tokens onto the stack, or pushes from the stack onto the output
def check_stack(token, stack, postfix)

  # If the stack is empty or include a right parenthesis, push token onto the stack
  if stack.empty? || stack.include?('(')
    stack.push(token)

  # Checks for the niche scenario where the top of the stack and the token are both ^ in which case since ^ has right associativity, the token would have higher precedence
  elsif token == "^" && stack.last == "^"
    stack.push(token)

  # The token has less precedence than the values in the stack 
  elsif PRECEDENCE[token] >= PRECEDENCE[stack.last]

      # Pop from the stack and pushes it onto the output until the stack is empty
      postfix << stack.pop until stack.empty?

      # Push the token onto the stack
      stack.push(token)

  # The token has the highest precedence and therefore it is pushed onto the stack
  else
    stack.push(token)    
  end
end

arr = ['6', '+', '3', '*', '4', '-', '4', '^', '5', '+', '(', '6', '*', '5', ')'] # 6+3*4-4^5+(6*5) -> 634*+45^-65*+
puts infix_to_postfix(arr)
