# In the previous exercise, you were asked to DRY up your code (remove duplicated code)
# by using Inheritance. In this exercise, you must DRY up your code 
# a different technique using Composition. Hint: Google 'Ruby Mixin Module'. (Using
# mixin modules is how you achieve Composition with Ruby.)
module Calculator
  def add(first_number, second_number)
    first_number + second_number
  end

  def subtract(first_number, second_number)
    first_number - second_number
  end

  def multiply(first_number, second_number)
    first_number * second_number
  end

  def divide(first_number, second_number)
    first_number / second_number
  end
end

class SimpleCalculator
  include Calculator
end

class FancyCalculator
  include Calculator

  def square_root(number)
    Math.sqrt(number)
  end
end

# Copy your driver code from the previous exercise below:
calc1 = SimpleCalculator.new
calc2 = FancyCalculator.new

# Test Simple Calculator (module mixin)
result = calc1.add(2, 3)
puts "Your result returned:"
puts result
if result == 5
  puts "PASS!"
else
  puts "F"
end

# Test Fancy Calculator
result = calc2.square_root(144)
puts "Your result returned:"
puts result
if result == 12
  puts "PASS!"
else
  puts "F"
end

# Test Fancy Calculator (module mixin)
result = calc2.multiply(6, 3)
puts "Your result returned:"
puts result
if result == 18
  puts "PASS!"
else
  puts "F"
end
