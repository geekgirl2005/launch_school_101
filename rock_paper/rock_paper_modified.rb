require 'pry'

#VALID_OPTIONS = %w(rock scissors paper lizard spock)

VALID_OPTIONS = {
  "r" => "rock",
  "s" => "scissors",
  "p" => "paper",
  "l" => "lizard",
  "sp" => "spock"
}

def prompt(message)
  puts("=> #{message}")
end

player = ''
computer = ''
answer = ''
winning_positions = {}


=begin
The approach that we recommend takes the logic out of the method and puts it into a collection. 
Instead of testing a long series of conditions, you can look up the player's move as a key in a hash. 
The value of that hash element would be a list of moves that the player's move beats. 
For instance, if you look up "rock," you should be able to determine that "rock" defeats either "scissors" or "lizard." 
This technique is an everyday coding "pattern" that will serve you well. 
Moving repetitive logic into hashes and arrays comes up in all kinds of programs, so it's worth trying to learn the technique now.
=end

=begin
                        

player = "rock"
result = winning_positions.select do |k, v|
  k == player
end

puts result.values




family = {  uncles: ["bob", "joe", "steve"],
            sisters: ["jane", "jill", "beth"],
            brothers: ["frank","rob","david"],
            aunts: ["mary","sally","susan"]
          }

immediate_family = family.select do |k, v|
  k == :sisters || k == :brothers
end

arr = immediate_family.values.flatten

p arr


=end

                     
=begin
-check my position(key) compare to computer (value)
take my key
if key has value
  i won
elsif value not found
  computer won
else 
  It's a tie
=end


def display_winner(hash1, hash2, computer, player)
  result = hash1[hash2[player]].any? {|w| w == computer}
  if result
puts("you won!")
elsif hash2[player] == computer
  puts("It's a tie!")
else
  puts("Computer won!")
end    
end

loop do 
  winning_positions = { "rock" => ["scissors", "lizard"],
                      "scissors" => ["paper", "lizard"],
                      "paper" => ["rock", "spock"],
                      "spock" => ["scissors", "rock"],
                      "lizard" => ["paper"]}
  loop do 
    prompt("Please choose one #{VALID_OPTIONS}")
    player = gets.chomp
    
    break if VALID_OPTIONS.has_key?(player)
    prompt('Choose one of the valid options!')
  end

  computer = VALID_OPTIONS[VALID_OPTIONS.keys.sample]
  prompt("You chose #{player} and computer chose #{computer}")

 display_winner(winning_positions, VALID_OPTIONS, computer, player)
 #test = VALID_OPTIONS[player]
 #prompt("TEST = #{test}")
 
  prompt("Do you want to play again? ('y')")
  answer = gets.chomp

  break unless answer.downcase.include?('y')
end

prompt('Thanks for playing!')



