

def repeat_text(text, repeat)
  repeat.times {puts text}
  end
  repeat_text("hi", 5)

  #is this an odd number?
  def is_odd?(num)
    if num % 2 != 0
      true
    else
      false
    end
  end

  #OR
  def is_odd?(num)
    num % 2 != 0
  end

puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(0)    # => false
puts is_odd?(7)    # => true


def digit_list(digit)
  digit.to_s.split('').map {|i| i.to_i}
end

digit_list(345677) #=> [3,4,5,6,7,7]

vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle', 'motorcycle', 'car', 'truck']
def count_occurrences(vehicles)
result = {}
  vehicles.each do |item|
    result[item] = vehicles.count(item)
  end
  result
end

count_occurrences(vehicles) #=> => {"car"=>4, "truck"=>3, "SUV"=>1, "motorcycle"=>2}


#Write a method that takes one argument, a string, and returns the same string with the words in reverse order.

#Examples:
#puts reverse_sentence('') == ''
#puts reverse_sentence('Hello World') == 'World Hello'
#puts reverse_sentence('Reverse these words') == 'words these Reverse

def reverse_sentence(string)
  string.split.reverse.join(' ')
end


reverse_sentence('Reverse these words')

def reverse_words(string)
  words = []
  string.split.each do |word|
    word.reverse! if word.size >= 5
    words << word
  end
  words.join(' ')
end
p reverse_words('Walk around the block') 

#Write a method that takes one argument, a positive integer, 
#and returns a string of alternating 1s and 0s, always starting with 1. 
#The length of the string should match the given integer.

def stringy(integer)
  new_string = ''
  integer.times do |time|
    if time.is_even?
      new_string = 1
    else
      new_string = 0
    end
  end
  new_string
end


def stringy(integer)
  new_string = []
  integer.times do |x|
    if x.odd?
      new_string << 0
    else 
      new_string << 1
    end
  end
  new_string.join
end


def stringy(integer)
  new_arr = []
  integer.times do |x|
    num = x.odd? ? 1: 0
    new_arr << num
  end
  new_arr.join
end

def average(array)
 (array.sum/array.count).to_f
end
average([13, 5, 87.2, 46, 9, 8])
average([9, 47, 23, 95, 16, 52])

def sum(int)
  int.digits.sum
end

sum(123_456_789) #=> 45
  

#OR
def sum(number)
  number.to_s.chars.map(&:to_i).reduce(:+)
end

b = 'a'
c = 67
c.is_a?(Integer)
b.is_a?(String)
b.is_a?(Integer)

def calculate_bonus(amount, approval)
  approval ? amount/2 : 0

end
calculate_bonus(240, false)

age = rand(20..200)
puts "what's your name?"
your_name = gets.chomp
if your_name.empty?
puts "Teddy is #{age} today!"
else 
  puts "#{your_name} is #{age} today!"
end

puts "Enter the length of the room in meters:"
length = gets.chomp.to_f
puts "Enter the width of the room in meters:"
width = gets.chomp.to_f
sq_meters = (length * width)
sq_feet = (sq_meters * 10.7639).round(2)
puts "The area of the room is #{sq_meters} square meters (#{sq_feet} square feet)."

puts "What is the bill? "
bill = gets.chomp.to_f
puts "What is the tip percentage?"
tip = gets.chomp.to_f
tip_amount = bill * tip/100
puts "The tip is #{tip_amount}"
total = bill + tip_amount
puts "The total is #{total}"


def retirement(age, time, current_year)
    puts "What is your age?" 
    age = gets.chomp.to_i
    puts "At what age would you like to retire?"  
    time = gets.chomp.to_i
    retirement_year = (time - age) + current_year 
    puts "It's #{current_year}. You will retire in #{retirement_year}."
    time_left = retirement_year - current_year
    puts "You have only #{time_left} years of work to go!"
end
retirement(30, 70, 2016)

puts "What is your name?"
your_name = gets.chomp
if your_name[-1] == '!'
  puts "HELLO #{your_name}. WHY ARE WE SCREAMING?"
else
  puts "Hello #{your_name.upcase}"
end

counter = 0
loop do
  counter +=1
  puts counter if counter.odd?
  break if counter>=99
end

num = 0
while num <=99
  puts num += 2
end

def compute_sum(num)
  total = 0
  1.upto(num) {|i| total += i}
  total
end

def compute_product(num)
  total = 1
  1.upto(num) {|i| total *= i}
  total
end

puts ">> Please enter an integer greater than 0:"
num = gets.chomp.to_i
puts ">> Enter 's' to compute the sum, 'p' to compute the product."
calculation = gets.chomp
if calculation == 's'
  puts "The sum of the integers between 1 and #{num} is #{compute_sum(num)}."
elsif calculation == 'p'
  puts "The product of the integers between 1 and #{num} is #{compute_product(num)}."
 else
  puts "enter 'p' or 's'"
end



name = 'Bob'
name.object_id

save_name = name
save_name.object_id
name = 'Alice'
name.object_id


puts name, save_name #=> 'Alice', 'Bob'

name = 'Bob'
name.object_id
save_name = name
save_name.object_id
name.upcase!
name.object_id
puts name, save_name #=>BOB, BOB


array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
array2 = []


array1.each { |value| array2 << value }


array1.each { |value| value.upcase! if value.start_with?('C', 'S') }
puts array2



numbers = []
puts "enter the 1st number"
num_1 = gets.chomp.to_i
numbers.push(num_1)
puts "enter the 2nd number"
num_2 = gets.chomp.to_i
numbers.push(num_2)
puts "enter the 3rd number"
num_3 = gets.chomp.to_i
numbers.push(num_3)
puts "enter the 4th number"
num_4 = gets.chomp.to_i
numbers.push(num_4)
puts "enter the 5th number"
num_5 = gets.chomp.to_i
numbers.push(num_5)

puts "enter the 6th number"
num_6 = gets.chomp.to_i

  if numbers.include?(num_6)
      puts "The number #{num_6} appears in #{numbers}." 
  else 
      puts "The number #{num_6} does NOT appear in #{numbers}."
    end

  

puts "enter the 1st number"
num_1 = gets.chomp.to_i
puts "enter the 2nd number"
num_2 = gets.chomp.to_i

puts num_1 + num_2
puts num_1 - num_2
puts num_1 * num_2

s = "Please write word or multiple words: walk"
s = "walk, don't run"
spaces = s.chars.count(' ')
letters = s.split('').count() 

total  = letters - spaces


#OR
s = "walk, don't run"
total = s.delete(' ').length

x = 6
y = [1,2,3]
def multiply(x, y)
  x * y
end


multiply(5, 3) # == 15

def square(x)
  multiply(x,x)
end
square(-8)


def xor?(x, y)
  x || y
end

xor?(5.even?, 4.even?) #== true
xor?(5.even?, 4.odd?) #==false

oddities([2, 3, 4, 5, 6]) == [2, 4, 6]

def oddities(arr)
  new_arr = []
  counter = 0
  loop do
    new_arr << arr[counter]
    break if counter > arr.size
    counter +=2
  end
  new_arr
end

def palindrome?(string)
  check = string.downcase.chars
  counter = 0
  contr_counter = -1
  loop do
    break if counter == string.size
    if check[counter] != check[contr_counter]
      puts "false"
    else
      puts "true"
      end

      counter +=1
    contr_counter -=1
    end

end

def palindrome?(string) 
 string == string.reverse
end
# TO BE WORKED ON
arr = [0, 4, 7, 10, 12]
counter = 0
back = 0
loop do
  arr[counter].eql?(arr[back])
  if counter == arr.size 
    return true
    break
  else 
    return false
  end
  counter +=1
  back -=1
end

def palindrome?(string) 
  string.upcase.gsub!(/[^a-zA-Z0-9\-]/,"")
  new_string = string.upcase.gsub!(/[^a-zA-Z0-9\-]/,"")
  new_string == new_string.reverse
end
 
palindrome?("Madam, I'm Adam")
palindrome?("Madam")


def palindromic_number?(int)
  num = int.to_s.split('')
  num == num.reverse
end

palindromic_number?(34543) 


#OR

def palindromic_number?(int)
  palindrome?(int.to_s)
end

palindromic_number?(34543) 

def short_long_short(str1, str2)
  str1.length < str2.length ? str1.concat(str2, str1) : str2.concat(str1, str2)
end
short_long_short('abcdef', 'xyz')

short_long_short('abc', 'defgh') #== "abcdefghabc"
short_long_short('', 'xyz')
=end


#take a year
#if <100 = 1st
#take an integer and divide by 100 = > *your century
#convert to s and access the last digit i.to_s[-1] 
#if last_digit > =1 => add 1 to *your century





=begin
def century_suffix(century)
  return 'th' if [11, 12, 13].include?(century % 100)
  last_digit = century % 10

      case last_digit 
      when 1 then 'st'
      when 2 then 'nd'
      when 3 then 'rd'
      else 'th'
      end
end
=end

def century_suffix(century)
 if [11, 12, 13].include?(century % 100)
   'th' 
 else
  last_digit = century % 10
      case last_digit 
      when 1 then 'st'
      when 2 then 'nd'
      when 3 then 'rd'
      else 'th'
      end
    end
end

def century(year)
  if year <=100
    result  = 1
  elsif year.to_s[-1].to_i >=1
    result = ((year / 100) + 1)
  else
    result = (year / 100)
  end
    result.to_s << century_suffix(result)
end

century(2000) 
century(2001) 
century(1965) 
century(256)
century(10103)
century(1052) 
century(1127) 
century(11201) 
century(2000)

def leap_year?(year)
  year < = 1752 && year % 4 == 0 || 
  year % 4 == 0 && year % 100 !=0 ||
  year % 4 == 0 && year % 100 ==0 && year % 400 == 0
end

leap_year?(2016) 
leap_year?(2015) 
leap_year?(2100) 
leap_year?(2400) 
leap_year?(240000) 
leap_year?(240001) 
leap_year?(2000) 
leap_year?(1900) 
leap_year?(1752) 
leap_year?(1700) 
leap_year?(1) 
leap_year?(100) 
leap_year?(400) 


#1. get the numbers from 1 to the int value
# only the numbers that are divided by 3 or 5
# add those numbers

def divider(num, divider)
  num % divider == 0
end

def calculation(int)
    total = 0
      1.upto(int) do |i|
        if divider(i, 3) || divider(i, 5)
        total += i
      end
    end
  total
end

calculation(10)

def running_total(arr)
  new_arr = []
counter = 1
loop do 
  break if counter == arr.size
  new_arr << arr[counter] + arr[counter - 1]
  counter +=1
end
new_arr.unshift(arr[0])
end

running_total([1,2])
running_total([2, 5, 13]) 

def running_total2(arr)
  total = 0
  arr.map {|i| total += i}

end

running_total2([2, 5, 13]) 


#TODO
string_to_integer('4321') == 4321
string_to_integer('570') == 570
DIGITS = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9
}

def string_to_integer(string)
  digits = string.chars.map { |char| DIGITS[char] }

  value = 0
  digits.each { |digit| value = 10 * value + digit }
  value
end

def string_to_signed_integer(string)
  case string[0]
  when '-' then -string_to_integer(string[1..-1])
  when '+' then string_to_integer(string[1..-1])
  else          string_to_integer(string)
  end
end

string_to_signed_integer('-570') 


#Further Exploration

#Write a hexadecimal_to_integer method that converts a string representing a hexadecimal number to its integer value.

#Example:

hexadecimal_to_integer('4D9f') #== 19871
string_to_signed_integer('4321') #== 4321
string_to_signed_integer('-570') #== -570
string_to_signed_integer('+100') #== 100

#convert a number into string
DIGITS = ['0', '1', '2', '3', '4', '5', '6','7', '8', '9']
def convert_to_str(num)
  result = ''
  loop do
    num, remainder = num.divmod(10)
    result.prepend(DIGITS[remainder])
    break if num == 0
  end
   result
end

def add_suffix(num)
  case  num <=> 0
    when -1 then "-#{convert_to_str(-num)}"
    when +1 then "+ #{convert_to_str(num)}"
    else
      convert_to_str(num)
  end
end

add_suffix(-123)


DIGITS = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']

def integer_to_string(number)
  result = ''
  loop do
    number, remainder = number.divmod(10)
    result.prepend(DIGITS[remainder])
    break if number == 0
  end
  result
end
def signed_integer_to_string(number)
  case number <=> 0
  when -1 then "-#{integer_to_string(-number)}"
  when +1 then "+#{integer_to_string(number)}"
  else         integer_to_string(number)
  end
end
signed_integer_to_string(-123) 


def ascii_value(str)
  total = 0
  str.chars.each {|s| total += s.ord }
  total
end

ascii_value('Four score') 

MINUTES_PER_HOUR = 60
HOURS_PER_DAY = 24
MINUTES_PER_DAY = HOURS_PER_DAY * MINUTES_PER_HOUR

def time_of_day(int)
  min_calculated = int % MINUTES_PER_DAY 
  hours, minutes = min_calculated.divmod(MINUTES_PER_HOUR)
  day = day_of_week(int)
  format('%02d:%02d', hours, minutes) "+ #{day}"
end

WEEK = ['Sun', 'Monday', 'Tue', 'Wed', 'Th', 'Friday', 'Sat']

def day_of_week(int)
  days, min = int.divmod(MINUTES_PER_DAY)
  if int < 0
    d_of_w = 7 - (days%7)
  elsif int == 0
    day_of_week = 7 
  else
    d_of_w == days%7
  end

  case d_of_w
  when 0 then WEEK[0]
  when 1 then WEEK[1]
  when 2 then WEEK[2]
  when 3 then WEEK[3]
  when 4 then WEEK[4]
  when 5 then WEEK[5]
  when 6 then WEEK[6]
  else "wrong number of days"
  end
  day_of_week
end

time_of_day(-4231)

time_of_day(3000).to_time
time_of_day(800)
time_of_day(35) #== "00:35"
time_of_day(0) #== "00:00"
time_of_day(-3) #== "23:57"





day_of_week(-4231)
day_of_week(-1437)
day_of_week(3000)
day_of_week(800)
day_of_week(-4231)
day_of_week(0)
day_of_week(-3)
day_of_week(35)








































