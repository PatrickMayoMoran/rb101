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

# valid_number?
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
#
# Start calculator
# Prompt of information we will ask for
#
### Loan Amount
# Ask for loan amount
# Show examples of how to enter
# Check for valid number
# user confirms this is correct
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
