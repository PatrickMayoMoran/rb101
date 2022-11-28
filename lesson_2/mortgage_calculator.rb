# Helper methods
def calculate_payment(loan, apr_months, duration)
  monthly_payment = loan * (apr_months /
  (1 - (1 + apr_months)**(-duration)))
  monthly_payment
end

def prompt(message)
  Kernel.puts("=>  #{message}")
end

def valid_name?(name)
  if name.empty? then false
  else true
  end
end

def valid_integer?(num)
  num.to_i.to_s == num
end

def valid_interest?(num)
  (num.to_f.to_s == num) || valid_integer?(num)
end

def confirmation?(entry, units)
  prompt("You've entered #{entry} #{units}. Is this correct?")
  prompt("Type yes to continue; type anything else to reenter.")
  confirmation = Kernel.gets().chomp()
  return true if confirmation.downcase.start_with?('y')
end

def again?
  prompt("Type yes to calculate again; type anything else to quit.")
  continue = Kernel.gets().chomp()
  return true if continue.downcase.start_with?('y')
end

def delay_prompt(msg, t)
  print(msg)
  t.times do
    sleep(1)
    print('.')
  end
  print("\n")
end

# Messages
introduction = <<-MSG
We will need three pieces of information to calculate your mortgage:
    1) loan amount
    2) the Annual Percentage Rate (APR)
    3) the loan duration in years
MSG

amount_examples = <<-MSG
Here are some examples:
    172,000
    2,045,000
    54,000
MSG

apr_examples = <<-MSG
Now we will enter your Annual Percentage Rate (APR)
    Some examples of APR are:
    1.5%
    5%
    7.25%
MSG

apr_instruction = <<-MSG
Please enter your yearly APR as a number without the percentage sign:
    For example, type 5 for 5% or 2.5 for 2.5%
MSG

term_examples = <<-MSG
Some examples are:
    10
    15
    30
    Your loan length in years:
MSG

# Greet the user and ask for name
prompt("Hello and welcome to the mortgage calculator! Please enter your name:")

# Validate name input
name = ''
loop do
  name = Kernel.gets().chomp()
  break if valid_name?(name)
  prompt("Hmm... you didn't enter anything; please enter a name:")
end

# Greet user by name
prompt("Hello #{name}! Let's calculate a mortgage!")

# Prompt of information we will ask for
prompt(introduction)

# Large loop for entire calculation
loop do
  ### Loan Amount
  delay_prompt("Let's start with the loan amount", 5)
  # Show examples of how to enter
  prompt(amount_examples)

  loan_amount = nil
  # Ask for loan amount
  loop do
    prompt("Please enter your loan amount in dollars. Do not enter cents:")
    loop do
      loan_amount = Kernel.gets().chomp()
      no_comma_loan = loan_amount.split(',').join
      # Check for valid number
      break if valid_integer?(no_comma_loan)
      prompt("Not a valid number - please enter a valid loan amount:")
    end
    # user confirms this is correct
    break if confirmation?(loan_amount, "dollars")
  end

  ### APR
  apr = nil
  loop do
    # Show examples of how to enter
    prompt(apr_examples)

    loop do
      # Ask for APR as yearly rate
      prompt(apr_instruction)
      apr = Kernel.gets().chomp()
      # Check for valid input
      break if valid_interest?(apr)
      prompt("Hmmm... that doesn't look right. Please enter a valid APR")
    end
    # user confirms this is correct
    break if confirmation?(apr, "percent")
  end

  ### Loan Duration
  loan_duration = nil
  loop do
    # Ask for loan duration in years
    prompt("Now you will enter the length of your loan term in years")
    # Show examples of how to enter
    prompt(term_examples)
    # Check for valid input
    loop do
      loan_duration = Kernel.gets().chomp()
      break if valid_integer?(loan_duration)
      prompt("Hmmm... that doesn't look right. Please enter a valid number")
    end
    # User confirms this is correct
    break if confirmation?(loan_duration, "years")
  end

  ### Calculating Payment
  # Convert inputs to usable formats

  loan_amount_integer = loan_amount.to_i
  monthly_apr = (apr.to_r) / 1200
  monthly_duration = (loan_duration.to_r) * 12

  # Tell user we are starting calculation
  delay_prompt("Starting calculation", 3)
  # Show each piece of information being added
  delay_prompt("With a loan amount of $#{loan_amount}", 3)
  delay_prompt("And #{monthly_duration.to_i} monthly payments", 3)
  delay_prompt("And an APR of #{apr}%", 3)
  # Calculate payment
  payment =
    calculate_payment(loan_amount_integer, monthly_apr, monthly_duration)
  payment_formatted = payment.to_f.truncate(2)
  # Display payment amount
  delay_prompt("We get a final monthly payment of", 3)
  prompt("$#{payment_formatted}")
  sleep(3)
  ### End or redo
  prompt("Would you like to calculate another mortgage?")
  break unless again?
end
# Thank user for calculating
prompt("Thanks for using the calculator; goodbye!")
