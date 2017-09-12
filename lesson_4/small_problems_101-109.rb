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




















