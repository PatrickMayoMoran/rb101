# ask the user for two numbers
# ask the user for an operation to perform
# perform the operation
# output the results
def prompt(message)
  Kernel.puts("=> #{message}")
end

prompt("Welcome to Calculator!")

prompt("What's the first number?")
number1 = Kernel.gets().chomp()

prompt("What's the second number?")
number2 = Kernel.gets().chomp()

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
