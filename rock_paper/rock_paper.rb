require 'pry'

VALID_OPTIONS = %w(rock scissors paper lizard spock)

def prompt(message)
  puts("=> #{message}")
end

player = ''
computer = ''
answer = ''

def short_versions

end

def win?(first, second)
  (first == 'rock' && second =='scissors') || 
    (first == 'scissors' && second == 'paper') ||
    (first == 'paper' && second == 'rock') ||
    (first == 'rock' && second == 'lizard') ||
    (first == 'spock' && second == 'scissors')||
    (first == 'scissors' && second == 'lizard') ||
    (first == 'lizard' && second == 'paper') ||
    (first == 'paper' && second == 'spock') ||
    (first == 'spock' && second == 'rock') 
end

def display_winner(player, computer)
  if win?(player, computer)
    prompt('You won!')
  elsif win?(computer, player)
    prompt('Cpomputer won!')
  else
    prompt("It's a tie!")
  end
end

loop do
  loop do 
    prompt("Please choose one #{VALID_OPTIONS}")
    player = gets.chomp
    break if VALID_OPTIONS.include?(player)

    prompt('Choose one of the valid options!')
  end

  computer = VALID_OPTIONS.sample
  prompt("You chose #{player} and computer chose #{computer}")

  display_winner(player, computer)
      
  prompt("Do you want to play again? ('y')")
  answer = gets.chomp

  break unless answer.downcase.include?('y')
end

prompt('Thanks for playing!')


=begin
#optional methoda => then in your loop you just call the function (no if/elsif statement)
  
  def display_winner(computer, player)
    if (player == 'rock' && computer == 'scissors') || 
       (player == 'scissors' && computer == 'paper') ||
       (player == 'paper' && computer == 'rock')
      prompt('You won!')
    elsif player == computer
      prompt("It's a tie!")
    else
      prompt('Computer won!')
    end
  end

  def win?(first, second)
  (first.start_with?('r') && second.start_with?('s') || 
    (first == 'scissors' && second == 'paper') ||
    (first == 'paper' && second == 'rock') ||
    (first == 'rock' && second == 'lizard') ||
    (first == 'spock' && second == 'scissors')||
    (first == 'scissors' && second == 'lizard') ||
    (first == 'lizard' && second == 'paper') ||
    (first == 'paper' && second == 'spock') ||
    (first == 'spock' && second == 'rock') 
end
=end