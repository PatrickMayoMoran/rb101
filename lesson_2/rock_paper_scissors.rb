VALID_CHOICES = ['rock', 'paper', 'scissors'] 

def prompt(message)
  Kernel.puts("=>  #{message}")
end

def display_results(player, computer)
  if (player == 'rock' && computer == 'scissors') ||
      (player == 'scissors' && computer == 'paper') ||
      (player == 'paper' && computer == 'rock')
    prompt("You won!")
  elsif (computer == 'rock' && player == 'scissors') ||
      (computer == 'scissors' && player == 'paper') ||
      (computer == 'paper' && player == 'rock')
    prompt("Computer won!")
  else
    prompt("It's a draw!")
  end
end

loop do
  choice = nil
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(", ")}")
    choice = Kernel.gets().chomp()
  
    if VALID_CHOICES.include?(choice)
      break
    else
      prompt("That's not a valid choice")
    end
  end
  
  computer_choice = VALID_CHOICES.sample
  
  prompt("You chose #{choice}; computer chose #{computer_choice}")
  display_results(choice, computer_choice)

prompt("do you want to play again?")
answer = Kernel.gets().chomp()
break unless answer.start_with?('y')
end
