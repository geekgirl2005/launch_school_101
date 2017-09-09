str = 'abcdef'
str[2, 3]
puts str #=> cde

def test(str)
  str[2, 3]!
end

test(str)
puts str 

str = 'The grass is green'
puts str[4, 5]
str[0] = "t"
str #=> "the grass is green"


arr = ['a', 'b', 'c', 'd', 'e', 'f', 'g']
arr[2, 3] #=> cde
arr[2, 3][0] #=>c

arr = [1, 2, 3, 4, 5]
arr[0] = 13
arr #=> [13, 2,3,4]

produce = {apple: "fruit", carrot: "vegetable", leek: "vegetable"}
produce[:apple] = "snack"
produce #=> {:apple=>"snack", :carrot=>"vegetable", :leek=>"vegetable"}
produce[:apple][0] #=> 'f'

produce = {"apple" => "fruit", "carrot" => "vegetable", "leek" => "vegetable"}
produce['apple'] #=> fruit


arr = [1, 2, 3, 4, 5]
counter = 0
loop do 
  arr[counter] +=1
  puts counter
  counter +=1
  break if counter == arr.size
end

arr #=> [2,3,4,5,6]

loop do
  num = rand(0..10)
  puts "testing"
  break if num ==5


counter = 0
loop do
  puts "count #{counter}"
  counter +=1
  break if counter ==5
end


loop do
  num = rand(0..30)
  next if num.odd?
  puts num
  break if num == 13
end


counter = 0
loop do
  counter +=1
  next if(counter ==2)
  puts counter
  break if counter >10
end

alphabet = 'abcdefghijklmnopqrstuvwxyz'

counter = 0
loop do
   puts alphabet[counter]
   counter +=1
  break if counter == alphabet.size
end

arr = ['one', ' ', 'two', 'three']
counter = 0
loop do
  puts("my number is #{arr[counter]}")
  counter +=1
  break if counter >= arr.size
end

#if you say puts("my number is #{counter}") 
#=> my number is 0, my number is 1, etc

objects = ['hello', :key, 10, []]

counter = 0
loop do
  puts("my object is #{objects[counter]}")
  counter +=1
  break if counter >= arr.size
end


#if we want to know what kind of objects we have in array
#puts("my object is objects[counter].class") 
objects = ['hello', :key, 10, []]

counter = 0
loop do
  puts("my object is #{objects[counter].class}")
  puts objects[counter].class
  counter +=1
  break if counter >= arr.size
end


counter = 0
members = family.keys
loop do
  each_member = members[counter] #=> aunt dad
  names = family[each_member]
  counter +=1
  puts("#{each_member} and #{names}")
  break if counter == family.size
end





family = { aunt: "jo", dad: "bob" }
#puts family[:aunt]
#family = { "aunt" => "jo", "dad" => "bob" }
#puts family['aunt']
counter = 0
members = family.keys
loop do
  each_member = members[counter]
  puts each_member
  counter +=1
  break if counter == family.size
end

count = 1

loop do 
  if count > 5
    break
  elsif count.odd?
    puts "#{count} is odd!"
  else 
    puts("#{count} is even!")
  end
  count +=1
end

loop do
  number = rand(100)
  puts number
  break if number.between?(0, 10)
end


process_the_loop = [true, false].sample
if process_the_loop
loop do
    puts("The loop was processed!")
    break
end
else 
  puts("the loop wasnt processed")
end

loop do
  puts 'What does 2 + 2 equal?'
  answer = gets.chomp.to_i
  break if answer == 4
    puts("wrong answer try again")
end


numbers = []

loop do
  puts 'Enter any number:'
  input = gets.chomp.to_i
  numbers = input.push
  break if numbers.size ==5
end
puts numbers

numbers = []

loop do
  puts 'Enter any number:'
  input = gets.chomp.to_i
  numbers.push(input)
  break if numbers.size ==5
end
p numbers

names = ['Sally', 'Joe', 'Lisa', 'Henry']

loop do
  names.shift
  p names
  break if names.size == # break id names.empty?
end

5.times do |index|
  puts("#{index}")
  break if index == 2
end


number = 0

until number == 10
  number += 1
  next if number.odd?
  puts number
end


number_a = 0
number_b = 0

loop do
  number_a += rand(2)
  number_b += rand(2)
  puts("num 1 = #{number_a}")
  puts("num 2 = #{number_b}")
  next unless number_a ==5 || number_a == 5
  puts("five reached")
  break
end

loop do
  number_a += rand(2)
  number_b += rand(2)
  puts("num 1 = #{number_a}")
  puts("num 2 = #{number_b}")
  next unless number_a ==5 || number_a == 5
  puts("five reached")
  break
end

number_of_greetings=2
def greeting
  puts 'Hello!'
end

while number_of_greetings>0
greeting
number_of_greetings -=1
end

loop do
  puts 'Just keep printing...'
  break
end

loop do
  puts 'This is the outer loop.'

  loop do
    puts 'This is the inner loop.'
    break
  end
  break
end

puts 'This is outside all loops.'

iterations = 1

loop do
  puts "Number of iterations = #{iterations}"
  iterations +=1
   break if iterations > 5
end

loop do
  puts 'Should I stop looping?'
  answer = gets.chomp
  break if answer.start_with?("y")
end

say_hello = true
counter = 0

while say_hello
  puts 'Hello!'
  counter +=1
  say_hello = false if counter ==5
end

5.times do
  puts ("hello")
end

numbers = []

while numbers.size <5
  number = rand(100) #=> rand(0..100) => will put random numbers between 0-99
  p numbers.push(number)
end


numbers = []
while numbers.size <5
  numbers << rand(100)
end

p numbers

number = 1
while number < 11
  puts("my number is #{number}")
  number +=1
end

####OR

num = 1
until num > 10
  puts num
  num +=1
end

num = 10
while num > 0
  puts num
  num -=1
end

numbers = [7, 9, 13, 25, 18]

until numbers.size ==0
  p numbers.shift
end

### OR

numbers = [7, 9, 13, 25, 18]
count = 0

until numbers.size == count
  p numbers[count]
  count +=1
end

#only outputs i if i is an odd number.

for i in 1..100
  puts i if i.odd?
end

friends = ['Sarah', 'John', 'Hannah', 'Dave']

for name in friends
  puts("hello #{name}")
end

count = 0
alphabet = 'abcdefghijklmnopqhggggrstuvwxyz'
new_string = ''
 loop do
  single_letter = alphabet[count] 
  count +=1
  break if count == alphabet.size-1
  if single_letter == "g"
    new_string << single_letter
  end
end
  puts new_string

fruits = ['apple', 'banana', 'pear']
count = 0
new_collection = []
loop do
  fruit = fruits[count]
  new_collection << fruit + 's'
  count += 1
  break if count == fruits.size
end
p new_collection



def find_vowels(string)
  count = 0
  new_array = ''
    loop do
      single_letter = string[count]
      if 'aeiouAEIOU'.include?(single_letter)
        new_array << single_letter
      end
    count +=1
    break if count == string.size 
    end 
    new_array
end

find_vowels("iu am a tuoursit mowb bob")

#select the key-value pairs where the value is 'Fruit'

produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}

arr_produce  = produce.to_a
new_array = []
count = 0
loop do
  if arr_produce[count].include?("Fruit") 
    new_array << arr_produce[count]
  end
count +=1
break if count == produce.size
end

p new_array
p new_array.to_h





produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}
count =0
keys = produce.keys
new_collection = {}

loop do
    single_fruit = keys[count]
    if
      produce[single_fruit] == "Fruit"
      new_collection[single_fruit] = "Fruit"
  end
  count +=1
  break if count == produce.size
end

p new_collection

produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}
count = 0
keys = produce.keys
new_collection = {}

loop do
  x = keys[count]
  if 
    produce[x] == "Fruit"
    new_collection[x] = "Fruit"
  end
  count +=1
  break if count == produce.size
end

p new_collection


produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}
def general_select(list, select_item)
  counter = 0
  list_key = list.keys
  new_hash = {}
  loop do
    break if counter == list.size
    single_key = list_key[counter]
    if list[single_key] == select_item
      new_hash[single_key] = select_item
    end
    counter +=1
  end
  new_hash
end

general_select(produce, "Vegetable")
general_select(produce, "Fruit")

my_numbers = [1, 4, 3, 7, 2, 6]

def multiply(array, math_times)
  counter = 0
  new_array = []
  loop do
    break if counter == array.size
    digit = array[counter]
    new_array << digit * math_times
    counter +=1
  end
   new_array
end
multiply(my_numbers, 3) 
# => [3, 12, 9, 21, 6, 18]

def double_numbers(numbers)
  doubled_numbers = []
  counter = 0

  loop do
    break if counter == numbers.size

    current_number = numbers[counter]
    doubled_numbers << current_number * 2

    counter += 1
  end
  doubled_numbers
end

my_numbers = [1, 4, 3, 7, 2, 6]
double_numbers(my_numbers)

def double_numbers!(numbers)
  counter = 0

  loop do
    break if counter == numbers.size
    current_number = numbers[counter]
    numbers[counter] = current_number * 2
    counter += 1
  end
  numbers
end
my_numbers = [1, 4, 3, 7, 2, 6]

def index_numbers(array)
  counter = 0
  new_array = []
  loop do
    break if counter == array.size
    array[counter] = counter
    new_array << counter
    counter +=1
  end
  new_array
end

index_numbers(my_numbers)
p my_numbers

def index_numbers!(array)
  counter = 0
  loop do
    break if counter == array.size
    array[counter] = counter
    array[counter] = counter
    counter +=1
  end
  array
end

index_numbers!(my_numbers)


def double_odd!(array)
  counter = 0
  loop do
    break if counter == array.size
    new_num = array[counter]
    if new_num.odd?
      new_num *=2
    end
    array[counter] =  counter
     counter +=1
   end
      array
  end
my_numbers = [1, 4, 3, 7, 2, 6]
p double_odd(my_numbers)
p my_numbers

question = 'How many times does a particular character appear in this sentence?'

def select_letter(string, letter)
  counter = 0
  new_string = ''
  loop do
    break if counter == string.size
    single_letter = string[counter]
    if single_letter == letter
      new_string << single_letter
    end
    counter += 1
  end
  new_string
end
select_letter(question, 'a')
select_letter(question, 't')
select_letter(question, 'z') 























