# Assignment
# Create a mortgage loan calculator that asks for:
# 1) the loan amount
# 2) the Annual Percentage Rate (APR)
# 3) the loan duration
#
# With these pieces of information, calculate and share:
# 1) the monthly interest rate
# 2) loan duration in months
# 3) monthly payment
#
# Formula:
#
# monthly_payment = 
# loan_amount * (monthly_interest / (1 - (1 + monthly_interest)**(-loan_duration_months)))

# Helper methods needed
def prompt(message)
  Kernel.puts("=> #{message}")
end

def valid_name?(name)
  if name.empty? then return false
  else true
  end
end

def valid_number?(num)
  num.to_i.to_s == num
end

# format_loan_amount
# loan_string_to_integer
# move_to_next_calculation?
#
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

# Start calculator
# Prompt of information we will ask for
prompt(
<<-MSG
We will need three pieces of information to calculate your mortgage:
1) loan amount
2) the Annual Percentage Rate (APR)
3) the loan duration in years
MSG
)

### Loan Amount
prompt("Let's start with the loan amount.")
# Show examples of how to enter
prompt(
<<-MSG
Here are some examples:
172,000
2,045,000
54,000
MSG
)

loan_amount = nil
# Ask for loan amount
loop do
  prompt("Please enter your loan amount in dollars. Do not enter cents:")
  loop do
    loan_amount = Kernel.gets().chomp()
    no_comma_loan = loan_amount.split(',').join
    # Check for valid number
    break if valid_number?(no_comma_loan)
    prompt("Not a valid number - please enter a valid loan amount:")
  end
 # user confirms this is correct
end
#
### APR
# Ask for APR as yearly rate
# Show examples of how to enter
# Check for valid input
# user confirms this is correct
#
### Loan Duration
# Ask for loan duration in years
# Show examples of how to enter
# Check for valid input
# User confirms this is correct
#
### Calculating Payment
# Tell user we are starting calculation
# Show each piece of information being added
# Display each piece of information calculated
# -- monthly payment
# -- loan duration in months
# -- monthly interest rate
#
### End or redo
# Thank user for calculating
# Ask if they want to calculate again
#
### Farewell
# Auf wiedersehen!
