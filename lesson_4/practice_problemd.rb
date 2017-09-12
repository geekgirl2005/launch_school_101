#What does shift do in the following code? How can we find out?

hash = { a: 'ant', b: 'bear' }
#hash.shift

hash.each do |key, value|
  hash.shift
end #=> {}

#What is the return value of the following statement? Why?

['ant', 'bear', 'caterpillar'].pop.size
#first we take the last item in array 'caterpillar'
#second we call .size method on the last item that we selected
#'caterpillar'.size => 11


#What is the block's return value in the following code? => true
        #it will output 1 but return true
        #!!!! it only outputs 1 instead of 1 and 3 because as soon as 
        # it hits "true" it is true no reason to check further!
#How is it determined? =>we loop through each item and it any item is odd=>true
#Also, what is the return value of any? in this code. =>true because
        # return value of the block => return value of the method
#What gets output by this code? =>true

[1, 2, 3].any? do |num|
  puts num
  num.odd?
end

#How does take work? Is it destructive? How can we find out?

arr = [1, 2, 3, 4, 5]
arr.take(2) #> [1,2] it is not distructive so arr = [1,2,3,4,5] unchanged

#What is the return value of map in the following code? Why?

{ a: 'ant', b: 'bear' }.map do |key, value|
  if value.size > 3
    value
  end
end

[1,2,3].map do |key|
if key >4
  key
end
end #=> [nil, nil, nil]


#What is the block's return value in the following code? Why?

[1, 2, 3].map do |num|
  if num > 1
    puts num
  else
    num
  end
end #=> [1, nil, nil]


#additional practice

#Given the array below
#Turn this array into a hash 
#where the names are the keys and the values are the positions in the array.

new_hash = {}
flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

flintstones.each_with_index do |key, index|
    new_hash[key] = index
end
new_hash

#Add up all of the ages from the Munster family hash:

ages = { "Herman" => 32, 
         "Lily" => 30, 
         "Grandpa" => 5843, 
         "Eddie" => 10, 
         "Marilyn" => 22, 
         "Spot" => 237 }

p ages.values

total_age = 0
ages.each do |key, value|
  total_age = value + total_age
end

puts("total age is #{total_age}")

#OR 
total_ages = 0
ages.each { |_,age| total_ages += age }
total_ages # => 6174

ages.values.inject(:+) # => 6174

#In the age hash:
#throw out the really old people (age 100 or older).

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
ages.keep_if { |name, age| age < 100}
ages.keep_if { |_, age| age < 100 }

ages.each_with_object([]) do |pair, new_hash|
  age = pair[1]
  if age < 100
    new_hash << pair
  end
end

#Pick out the minimum age from our current Munster family hash:

ages = { "Herman" => 32, 
         "Lily" => 30, 
         "Grandpa" => 5843, 
         "Eddie" => 10, 
         "Marilyn" => 22, 
         "Spot" => 237 }
ages.values.min

#n the array
#Find the index of the first name that starts with "Be"


flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
counter = 0
loop do
  break if counter == flintstones.size
  
    puts flintstones[counter] if flintstones[counter].start_with?("Be")
    counter += 1
  end

  #Amend this array so that the names are all shortened to just the first three characters:

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
counter = 0

loop do
  break if counter == flintstones.size
  
    flintstones[counter].delete(2, flintstones[counter.length])
    p flintstones
    counter += 1
  end

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
flintstones.each {|item| item.slice!(3, item.length)}
p flintstones

# OR

flintstones.map! {|item| item[0, 3]}

#Create a hash that expresses the frequency with which each letter occurs in this string:
#{ "F"=>1, "R"=>1, "T"=>1, "c"=>1, "e"=>2, ... }

statement = "The Flintstones Rock"
letters = statement.split('')
new_arr = {}
counter = 1
letters.each_with_object({}) do |item, new_arr| 
  new_arr[item] = counter
  if new_arr.key?(item)
    new_arr[key] = counter + 1
  end
  counter +=1
  p new_arr
end


statement = "The Flintstones Rock"
result = {}
letters.each do |letter|
  num = statement.scan(letter).count
  result[letter] = num
end
p result


statement = "The Flintstones Rock"

p statement.scan('n') #=> ['n', 'n']
p statement.scan('n').count #=> 2


#What happens when we modify an array while we are iterating over it? 
#What would be output by this code?

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number #=> 1 , 
    numbers.shift(1)
  p numbers
end
#1 => print 1; [2,3,4]
#2 => print 3 (INDEX 2 from a new array which is [2,3,4])  !!!!
#3 => print 3 

#What would be output by this code?

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.pop(1)
end

# 1 => puts 1 [1,2,3]
# 2 => puts 2 [1,2]
#return [1,2]


words = "the flintstones rock"
new_arr = words.split()
new_arr.each {|word| word.capitalize!}
p new_arr.join(' ')

kid = range(0..17)
adult = range(18..64)
senior = age > 65

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}
 
munsters.each do |key, value|
  current_age = value['age']
  case current_age
  when 0..18
      value['age_group'] = 'kid'
  when 18..64
    value['age_group'] = 'adult'
  else
    value['age_group'] = 'senior'
    end
end
























































