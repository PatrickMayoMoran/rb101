VALID_CHOICES = %w(rock paper scissors lizard spock)

CHOICES = {
  rock: [:scissors, :lizard],
  paper: [:rock, :spock],
  scissors: [:paper, :lizard],
  spock: [:rock, :scissors],
  lizard: [:paper, :spock]
}

ABBREVIATIONS = {
  'r' => :rock,
  's' => :scissors,
  'p' => :paper,
  'l' => :lizard,
  'k' => :spock
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

choice_message = <<-MSG
Type r for rock
    Type s for scissors
    Type p for paper
    Type l for lizard
    Type k for spock
MSG

prompt("Let's play rock, paper, scissors, spock, lizard! First to 3 wins!"
loop do
  choice = nil
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    prompt(choice_message)
    choice = Kernel.gets().chomp()

    if ABBREVIATIONS.keys.include?(choice)
      choice = ABBREVIATIONS[choice]
      break
    else
      prompt("That's not a valid choice")
    end
  end

  computer_choice = VALID_CHOICES.sample

  prompt("You chose #{choice.to_s}; computer chose #{computer_choice}")
  display_results(choice, computer_choice)

  prompt("do you want to play again?")
  answer = Kernel.gets().chomp()
  break unless answer.start_with?('y')
end
