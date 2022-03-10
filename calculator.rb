# ask the user for two numbers
puts "Welcome to Calulator!"

puts "What's the first number?"
number1  = gets.chomp

puts "What's the second number?"
number2  = gets.chomp

puts "the first number is #{number1}"
puts "the second number is #{number2}"

# ask the user for an operation to perform
puts "What operation would you like to perform? 
  1) add 
  2) subtract 
  3) multiply 
  4) division"
operator  = gets.chomp.to_i

puts "the operator is #{operator}"

result = case operator
          when 1
            result = number1.to_i + number2.to_i
          when 2
            result = number1.to_i - number2.to_i
          when 3
            result = number1.to_i * number2.to_i
          when 4
            result = number1.to_f / number2.to_f
          else
            "invalid number"
          end
          
puts result
# perform the operation on the two numbers

# output the result