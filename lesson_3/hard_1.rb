#1 what is an output
if false
  greeting = “hello world”
end

greeting #=> nil 

#2 what is an output? VERY IMPORTANT
greetings = { a: 'hi' }
puts("greeting obj id = #{greetings.object_id}")
informal_greeting = greetings[:a]
puts("informal_greeting before changes = #{informal_greeting.object_id}")
informal_greeting << ' there'
puts ("informal_greeting obj id. = #{informal_greeting.object_id}")

puts informal_greeting  #  => "hi there"
puts greetings #==> { a: 'hi there' }

#3
#A => 
def mess_with_vars(one, two, three)
  one = two
  two = three
  three = one
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}" #=>one
puts "two is: #{two}". #=> two
puts "three is: #{three}" #=> three

#B
def mess_with_vars(one, two, three)
  one = "two"
  two = "three"
  three = "one"
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}" #=>one
puts "two is: #{two}". #=> two
puts "three is: #{three}" #=> three

#C
def mess_with_vars(one, two, three)
  one.gsub!("one","two")
  two.gsub!("two","three")
  three.gsub!("three","one")
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}" #=> two
puts "two is: #{two}" #=> three
puts "three is: #{three}" #=> one


def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  if (dot_separated_words.size == 4)
    while dot_separated_words.size > 0 do
    word = dot_separated_words.pop
    #break unless is_an_ip_number?(word)
  end
  else 
    puts("false ip address")
    return false
     end 
    return true
  
end
dot_separated_ip_address?("56.45.78.65")
dot_separated_ip_address?("56.45.32")

def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  if (dot_separated_words.size == 4)
    while dot_separated_words.size > 0 do
    word = dot_separated_words.pop
    #break unless is_an_ip_number?(word)
  end
  else 
    puts("false ip address")
    return false
     end 
    return true
  
end































