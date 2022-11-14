# ask the user for two numbers
# ask the user for an operation to perform
# perform the operation
# output the results
def prompt(message)
  Kernel.puts("=> #{message}")
end

def valid_number?(num)
  num.to_i != 0
end

prompt("Welcome to Calculator!")
loop do # Main loop
  number1 = ''
  loop do
    prompt("What's the first number?")
    number1 = Kernel.gets().chomp()
  
    if valid_number?(number1)
      break
    else
      prompt('Hmm... that doesn\'t look like a valid number. Try again')
    end
  end
  
  number2 = ''
  loop do
    prompt("What's the second number?")
    number2 = Kernel.gets().chomp()
  
    if valid_number?(number2)
      break
    else
      prompt('Hmm... that doesn\'t look like a valid number. Try again')
    end
  end
  
  prompt("What operation would you like to perform?")
  prompt("1) add \n2) subtract \n3) multiply \n4) divide")
  operator = Kernel.gets().chomp()
  
  result =  case operator 
            when '1'
              number1.to_i + number2.to_i
            when '2'
              number1.to_i - number2.to_i 
            when '3'
              number1.to_i * number2.to_i 
            when '4'
              number1.to_f / number2.to_f 
  end
  
  prompt("The result is #{result}")

  prompt("Do you want to perform another calculation? (Y to calculate again)")
  again = Kernel.gets().chomp()
  break unless again.downcase().start_with?('y') == true

end

prompt("Goodbye! Thanks for using the calculator.")
