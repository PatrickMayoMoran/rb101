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

def find_winner(player_score, computer_score)
  if player_score == 3
    "Player"
  elsif computer_score == 3
    "Computer"
  else
    nil
  end
end

def update_score(first, second)
  if win?(first.to_sym, second.to_sym)
    return 1
  else
    return 0
  end
end

def display_score(player_score, computer_score)
  prompt(<<-MSG
The score is:
    You: #{player_score}
    Computer: #{computer_score}
MSG
)
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

loop do
  prompt("Let's play rock, paper, scissors, spock, lizard! First to 3 wins!")
  player_score = 0
  computer_score = 0
  
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
  
    prompt("You chose #{choice}; computer chose #{computer_choice}")
    display_results(choice, computer_choice)
    player_score += update_score(choice, computer_choice)
    computer_score += update_score(computer_choice, choice)
    display_score(player_score, computer_score)
    winner = find_winner(player_score, computer_score)
    if winner
      prompt("#{winner} is the winner!")
      break
    end
  end
  
  prompt("do you want to play again?")
  answer = Kernel.gets().chomp()
  break unless answer.start_with?('y')
end

