def prompt(message)
  puts "=> ### #{message} ### <="
end

def valid_number?(num)
  num.to_i != 0
end

def operation_to_message(operator)
  returned_operator = case operator
                      when 1
                        'Adding'
                      when 2
                        'Subtracting'
                      when 3
                        'Multiplying'
                      when 4
                        'Dividing'
  end
  
  returned_operator
end

# ask the user for two numbers
prompt "Welcome to Calulator! Enter your name: "

name = ''
loop do
  name = gets.chomp
  
  if name.empty?()
    prompt("make sure to enter a valid name")
  else
    break
  end
end

prompt("Hi #{name}!")


loop do # main loop
  number1 = ''
  loop do
    prompt "What's the first number?"
    number1  = gets.chomp
    
    if valid_number?(number1) 
      break
    else
      prompt("Sorry, that isn't a valid number")
    end
      
  end
  
  number2 = ''
  loop do
    prompt "What's the second number?"
    number2  = gets.chomp
    
    if valid_number?(number2)
      break
    else
      prompt("Sorry, that isn't a valid number")
    end
  end
  
  # ask the user for an operation to perform
  prompt "What operation would you like to perform? 
    1) add 
    2) subtract 
    3) multiply 
    4) division
    "
    
  operator = ''  
  loop do 
    operator  = gets.chomp.to_i
    
    if (1..4).include?(operator)
      break
    else
      prompt("Must choose  1, 2, 3, or 4")
    end
    
  end
  
  
  # perform the operation on the two numbers
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
            
  # output the result
  prompt("#{operation_to_message(operator)} the two numbers" )
  prompt "The answer is: #{result}"
  
  
  prompt("Would you like to perform another calculation? (Y to calculate again)")
  repeat_again = gets.chomp
  
  break unless repeat_again.downcase.start_with?('y')

end