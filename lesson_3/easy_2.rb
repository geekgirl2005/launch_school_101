#QUESTION 1
#DOES "Spot" exists?
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

ages.key?("Spot") #=> false
ages.assoc("Spot") #=> nil
ages.any? {|key, value| key == "Spot"}
ages.include?("Spot")
ages.member?("Spot")

#QUESTION 2
munsters_description = "The Munsters are creepy in a good way."


munsters_description.capitalize             #"The munsters are creepy in a good way."
munsters_description.swapcase               #"tHE mUNSTERS ARE CREEPY IN A GOOD WAY."
munsters_description.downcase               #"the munsters are creepy in a good way."
munsters_description.upcase                 #"THE MUNSTERS ARE CREEPY IN A GOOD WAY."

#QUESTION 3
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10 }

additional_ages = { "Marilyn" => 22, "Spot" => 237 }

ages.merge!(additional_ages)

#QUESTION 4
#contains "Dino"?
advice = "Few things in life are as important as house training your pet dinosaur."
advice.include?("Dino")

advice.match("Dino")

#QUESTION 5
#write this array easier way
flintstones = ["Fred", "Barney", "Wilma", "Betty", "BamBam", "Pebbles"]

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

#QUESTION 6
#add "Dino"

flintstones << "Dino"
flintstones.push("Dino")

#QUESTION 7
#add Dino and Hoppy)
flintstones = ["Fred", "Barney", "Wilma", "Betty", "BamBam", "Pebbles"]
new_arr = ["Dino", "Happy"]
flintstones.concat(new_arr)
flintstones.merge!(new_arr)
flintstones.push("Dino").push("Happy")
flintstones.concat(%w(Dino Happy))

#QUESTION 8
advice = "Few things in life are as important as house training your pet dinosaur."
advice.slice!(0, advice.index('house'))
advice.slice!(advice.index('house'), advice.length)

#QUESTION 9
#count "t"
statement = "The Flintstones Rock!"
statement.count('t')

#QUESTION 10
#center with 40 characters wide
title = "Flintstone Family Members"
title.center(40)






























