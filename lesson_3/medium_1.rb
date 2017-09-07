#For this practice problem, write a one-line program 
#that creates the following output 10 times, 
#with the subsequent line indented 1 space to the right:
#The Flintstones Rock!
 #The Flintstones Rock!
  #The Flintstones Rock!


10.times {|num| puts (" " * num) + "The Flintstones Rock!"}

#Question 2

#The result of the following statement will be an error:

puts "the value of 40 + 2 is " + (40 + 2).to_s
#Why is this and what are two possible ways to fix this?

puts "the value of 40 + 2 is #{40 + 2}"

#QUESTION 3

def factors(number)
  dividend = number
  divisors = []
  while dividend > 0 do
  divisors << number / dividend if number % dividend == 0
  dividend -= 1
end
divisors
end

#bonus #1 it won't display float
#bonus #2 it returns an array
  

def factors(number)
  dividend = number
  divisors = []
  while dividend > 0 do
    divisors.push(number/dividend) if number % dividend ==0
    dividend -=1
end
divisors
end

#Question 4

#Alyssa was asked to write an implementation of a rolling buffer. 
#Elements are added to the rolling buffer and if the buffer becomes full, 
#then new elements that are added will displace the oldest elements in the buffer.

#She wrote two implementations saying, 
#{}"Take your pick. Do you like << or + for modifying the buffer?". 
#Is there a difference between the two, other than what operator she chose to use to 
#add an element to the buffer?

buffer = [ 1,2,3]
def rolling_buffer1(buffer, max_buffer_size, new_element)
  buffer << new_element
  buffer.shift if buffer.size > max_buffer_size
  buffer
end

rolling_buffer1(buffer, 5, 2)
p("buffer = #{buffer}") #=>[1,2,3,2]

input_array = [ 1,2,3]
def rolling_buffer2(input_array, max_buffer_size, new_element)
  buffer = input_array + [new_element]
  buffer.shift if buffer.size > max_buffer_size
  buffer
end
rolling_buffer2(input_array, 5, 2)
p("input array = #{input_array}") #=> [1,2,3]


#Question 5

#Alyssa asked Ben to write up a basic implementation of a Fibonacci calculator, 
#A user passes in two numbers, and the calculator will keep computing the sequence 
#until some limit is reached.

#Ben coded up this implementation but complained that as soon as he ran it, 
#he got an error. Something about the limit variable. What's wrong with the code?

limit = 15

def fib(first_num, second_num, limit)
  while second_num < limit
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end

end

result = fib(0, 1, 15)
puts "result is #{result}"

#Question 6

#In an earlier practice problem we saw that depending on variables to be modified 
#by called methods can be tricky:
#We learned that whether the above "coincidentally" does what we think we wanted "depends" upon 
#what is going on inside the method.

#How can we refactor this practice problem to make the result easier to predict 
#and easier for the next programmer to maintain?


#Question 7

#What is the output of the following code?

answer = 42

def mess_with_it(some_number)
  some_number += 8
end

new_answer = mess_with_it(answer)

p answer - 8

#output is 34 (42-8) because numbers are immmutable 

answer = 42

def mess_with_it(some_number)
  answer = some_number
end
mess_with_it(50)

p answer #=> 42

#Question 8

#One day Spot was playing with the Munster family's home computer 
#and he wrote a small program to mess with their demographic data:

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

def mess_with_demographics(demo_hash)
  demo_hash.values.each do |family_member|
    family_member["age"] += 42
    family_member["gender"] = "other"
  end
end


mess_with_demographics(munsters) #=> will change munsters






























































































