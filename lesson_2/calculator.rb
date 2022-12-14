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

def operator_to_message(op)
  case op
  when '1'
    'adding'
  when '2'
    'subtracting'
  when '3'
    'multiplying'
  when '4'
    'dividing'
  end
end

prompt("Welcome to Calculator! Please enter your name:")

name = ''
loop do
  name = Kernel.gets().chomp()
  if name.empty?
    prompt("Hmm... make sure to enter a valid name")
  else
    break
  end
end

prompt("Hi #{name}! Let's get calculating!")

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

  operator_prompt = <<-MSG
  What operation would you like to perform?
  1) add
  2) subtract
  3) multiply
  4) divide
  MSG
  prompt(operator_prompt)

  operator = ''
  loop do
    operator = Kernel.gets().chomp()
    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt("Must enter 1, 2, 3, or 4")
    end
  end

  prompt("#{operator_to_message(operator)} #{number1} and #{number2}...")
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
