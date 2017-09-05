require 'pry'

# VALID_OPTIONS = %w(rock scissors paper lizard spock)

VALID_OPTIONS = { 'r' => 'rock',
                  's' => 'scissors',
                  'p' => 'paper',
                  'l' => 'lizard',
                  'sp' => 'spock' }

WINNING_POSITIONS = { 'rock'     => %w(scissors lizard),
                      'scissors' => %w(paper lizard),
                      'paper'    => %w(rock spock),
                      'spock'    => %w(scissors rock),
                      'lizard'   => ['paper'] }


def prompt(message)
  puts("=> #{message}")
end

player = ''
computer = ''
answer = ''
player_score = 0
computer_score = 0

def winner?(hash1, hash2, computer, player)
  hash1[hash2[player]].any? { |v| v == computer }  
end

loop do 
  loop do 
    prompt("Please choose one #{VALID_OPTIONS}")
    player = gets.chomp
    
    break if VALID_OPTIONS.key?(player)
    prompt('Choose one of the valid options!')
  end

  computer = VALID_OPTIONS.values.sample
  prompt("You chose #{VALID_OPTIONS[player]} and computer chose #{computer}")

  result = winner?(WINNING_POSITIONS, VALID_OPTIONS, computer, player)
    if result
      player_score += 1
      if(player_score>=5)
        prompt("You won and you are a grand winner with a total score of #{player_score}!")
      else
        prompt("You won! Your total score is #{player_score}")
      end
      
    elsif VALID_OPTIONS[player] == computer
      puts("It's a tie!")
    else
      computer_score += 1
      if computer_score>=5
        prompt("Computer won and it is a grand winner with a total score of #{computer_score}")
      else 
      puts("Computer won and its total score is #{computer_score}")
      end
    end  

  prompt("Do you want to play again? ('y')")
  answer = gets.chomp

  break unless answer.downcase.include?('y')
end

prompt('Thanks for playing!')



