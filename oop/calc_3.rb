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

scalculator= SimpleCalculator.new

fcalculator= FancyCalculator.new

bangcalculator= WhizBangCalculator.new

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

puts "testing WhizBangCalculator class"

if bangcalculator.add(5, 4)== 9
  puts "PASS"

else
  puts "FAIL"
end

if bangcalculator.subtract(5, 4)== 1
  puts "PASS"

else
  puts "FAIL"
end

if bangcalculator.multiply(5, 4)== 20
  puts "PASS"

else
  puts "FAIL"
end

if bangcalculator.divide(20, 4)== 5
  puts "PASS"

else
  puts "FAIL"
end

if bangcalculator.square_root(100)==10
  puts "PASS"

else
  puts "FAIL"
end

if bangcalculator.hypotenuse(4, 10)==10.770329614269007
  puts "PASS"
else
  puts "FAIL"
end


if bangcalculator.exponent(8, 2)==64
  puts "PASS"

else
  puts "FAIL"
end
