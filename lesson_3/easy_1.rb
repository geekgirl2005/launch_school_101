#question 1
#output??
numbers = [1, 2, 2, 3]
numbers.uniq

puts numbers 
#numbers will output 1,2,2,3 
#however if we output numbers.uniq it will output 1,2,3
#.uniq method doesnt modify the caller
#NOTE: puts always prints out output as strig (to_s_)
#p call automatically calls inspect on its argument (the same as puts numbers.inspect => [1,2,2,3])

#QUESTION 2
#WHAT HAPPENS IN THE FOLLOWING SCENARIOS
   # what is != and where should you use it? =>not equal to used in conditional
   # put ! before something, like =>nothing might be a part of method;s name
   # put ! after something, like words.uniq! => if at the end of a method like .method! in many cases it modifies the caller
   # put ? before something >conditional x=8 ? puts "correct": puts"wrong"
   # put ? after something =>part of method's name
   # put !! before something, like !!user_name => turning into boolean equivalent
   # ! with object =>turning into the opposite of boolean equivalent

#QUESTION 3
#replace the word important with 'urgent'
advice = "Few things in life are as important as house training your pet dinosaur."
advice.sub!("important", "urgent")
puts advice

#QUESTION 4
numbers = [1, 2, 3, 4, 5]

#numbers.delete_at(1) => deletes an items with an index = 1 (our case it would be number 2)
#numbers.delete(1) => deletes exactly what is specified in the brackets (number 1 in our case)
#both methods modify the caller!

#QUESTION 5
#does a range between 10-100 contain 42?

range = (10..100)
range.include?(42)

#it could also be cover?
#range.cover?(42)

#QUESTION 6
#ADD "Four score and"

famous_words = " seven years ago..."

famous_words = "Four score and" + famous_words

famous_words.prepend("Four score and")

#QUESTION 7
flintstones = ["Fred", "Wilma"]
flintstones << ["Barney", "Betty"]
flintstones << ["BamBam", "Pebbles"]
flintstones.flatten!

#QUESTION 8

flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }

flintstones.delete_if{|key, value| key != "Barney"}

#OR
flintstones.assoc("Barney") #searches through the whole array and only returns key == ("Barney")



















