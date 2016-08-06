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

scalculator= SimpleCalculator.new

fcalculator= FancyCalculator.new

puts "testing SimpleCalculator class"

if scalculator.add(5, 4)== 9
  puts "PASS"

else
  puts "FAIL"
end

if scalculator.subtract(5, 4)== 1
  puts "PASS"

else
  puts "FAIL"
end

if scalculator.multiply(5, 4)== 20
  puts "PASS"

else
  puts "FAIL"
end

if scalculator.divide(20, 4)== 5
  puts "PASS"

else
  puts "FAIL"
end

puts "testing FancyCalculator class"

if fcalculator.add(5, 4)== 9
  puts "PASS"

else
  puts "FAIL"
end

if fcalculator.subtract(5, 4)== 1
  puts "PASS"

else
  puts "FAIL"
end

if fcalculator.multiply(5, 4)== 20
  puts "PASS"

else
  puts "FAIL"
end

if fcalculator.divide(20, 4)== 5
  puts "PASS"

else
  puts "FAIL"
end

if fcalculator.square_root(100)==10
  puts "PASS"

else
  puts "FAIL"
end
