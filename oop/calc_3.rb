# In this example, we have THREE calculators, the two included in the previous
# exercises as well as Whiz Bang Calculator that can even calculate the hypotenuse
# of a triangle if given the length of the other two sides. Figure out how to 
# DRY up all the code below - there shouldn't be a single method duplicated between
# any two classes.

class SimpleCalculator

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

class FancyCalculator < SimpleCalculator

  def square_root(number)
    Math.sqrt(number)
  end

end

class WhizBangCalculator < FancyCalculator

  def hypotenuse(first_number, second_number)
    Math.hypot(first_number, second_number)
  end
  
  def exponent(first_number, exponent_number)
    total = 1
    exponent_number.times { total = multiply(total,first_number) }
    total
  end

end

# Copy your driver code from the previous exercise and more below:
# Write your own driver code below:
calc1 = SimpleCalculator.new
calc2 = FancyCalculator.new
calc3 = WhizBangCalculator.new

# Test Simple Calculator
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

# Test Fancy Calculator Inheritance
result = calc2.multiply(6, 3)
puts "Your result returned:"
puts result
if result == 18
  puts "PASS!"
else
  puts "F"
end

# Test Whiz Bang Calculator
result = calc3.exponent(2, 4)
puts "Your result returned:"
puts result
if result == 16
  puts "PASS!"
else
  puts "F"
end

# Test Whiz Bang Calculator Inheritance
result = calc3.divide(18, 3)
puts "Your result returned:"
puts result
if result == 6
  puts "PASS!"
else
  puts "F"
end



