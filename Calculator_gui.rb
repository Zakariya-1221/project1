require 'tk'
require_relative 'Category1'
require_relative 'absolute'
require_relative 'exponent'
require_relative 'factorial'
require_relative 'percentage'
require_relative 'median'
require_relative 'is_prime'
require_relative 'minimum'
require_relative 'mode'
require_relative 'mean'
require_relative 'maximum'
require_relative 'fahrenheit_to_celsius'
require_relative 'evaluatePostfixExpression'
require_relative 'infix_to_postfix'

class CalculatorGUI
  include Category1  # Include the Category1 module to access sin, cos, and tan methods

  def initialize
    @root = TkRoot.new { title "Advanced Calculator" }
    @entry = TkEntry.new(@root) { width 30 }.pack
    
    create_buttons
  end

  def create_buttons
    buttons = [
      ['7', '8', '9', '/'],
      ['4', '5', '6', '*'],
      ['1', '2', '3', '-'],
      ['0', '.', '=', '+'],
      ['C', '(', ')', '^'],
      ['sqrt', 'cbrt', 'log', 'sin'],
      ['cos', 'tan', 'abs', 'fact'],
      ['prime', 'fib', 'even', 'odd'],
      ['mean', 'median', 'mode', 'F->C']
    ]

    buttons.each do |row|
      f = TkFrame.new(@root).pack
      row.each do |caption|
        TkButton.new(f) { 
          text caption
          command proc { button_click(caption) }
        }.pack { side 'left' }
      end
    end
  end

  def button_click(value)
    case value
    when '='
      calculate
    when 'C'
      @entry.delete(0, 'end')
    when 'sqrt'
      @entry.insert('end', 'sqrt(')
    when 'cbrt'
      @entry.insert('end', 'cbrt(')
    when 'log'
      @entry.insert('end', 'log(')
    when 'sin', 'cos', 'tan'
      @entry.insert('end', "#{value}(")
    when 'abs'
      @entry.insert('end', 'abs(')
    when 'fact'
      @entry.insert('end', 'factorial(')
    when 'prime'
      result = is_prime(@entry.get.to_i) ? "is prime" : "is not prime"
      @entry.delete(0, 'end')
      @entry.insert(0, result)
    when 'fib'
      # Assuming you have a fibonacci method
      result = fibonacci(@entry.get.to_i).join(', ')
      @entry.delete(0, 'end')
      @entry.insert(0, result)
    when 'even'
      # Assuming you have a generate_even method
      result = generate_even(0, @entry.get.to_i).join(', ')
      @entry.delete(0, 'end')
      @entry.insert(0, result)
    when 'odd'
      # Assuming you have a generate_odd method
      result = generate_odd(0, @entry.get.to_i).join(', ')
      @entry.delete(0, 'end')
      @entry.insert(0, result)
    when 'mean', 'median', 'mode'
      data = @entry.get.split(',').map(&:to_f)
      result = send(value, data)
      @entry.delete(0, 'end')
      @entry.insert(0, result)
    when 'F->C'
      result = fahrenheit_to_celsius(@entry.get.to_f)
      @entry.delete(0, 'end')
      @entry.insert(0, result)
    else
      @entry.insert('end', value)
    end
  end

  def calculate
    expression = @entry.get
    # Handle trigonometric functions before converting to postfix
    ['sin', 'cos', 'tan'].each do |func|
      expression.gsub!(/#{func}\(([^)]+)\)/) do
        value = $1.to_f
        result = send(func, value)
        result.to_s
      end
    end
    postfix = infix_to_postfix(expression)
    result = evaluate_postfix_expression(postfix)
    @entry.delete(0, 'end')
    @entry.insert(0, result)
  end

  def run
    Tk.mainloop
  end
end

# Create and run the calculator
calculator = CalculatorGUI.new
calculator.run