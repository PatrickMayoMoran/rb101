VALID_CHOICES = %w(rock paper scissors lizard spock)

CHOICES = {
  rock: [:scissors, :lizard],
  paper: [:rock, :spock],
  scissors: [:paper, :lizard],
  spock: [:rock, :scissors],
  lizard: [:paper, :spock]
}

def prompt(message)
  Kernel.puts("=>  #{message}")
end

def win?(first, second)
  CHOICES[first].include?(second)
end

def display_results(player, computer)
  if win?(player.to_sym, computer.to_sym)
    prompt("You won!")
  elsif win?(computer.to_sym, player.to_sym)
    prompt("Computer won!")
  else
    prompt("It's a draw!")
  end
end

loop do
  choice = nil
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
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
