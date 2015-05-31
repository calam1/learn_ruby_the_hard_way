# i = 0
# numbers = []

# while i < 6
#   puts "At the top i is #{i}"
#   numbers.push(i)

#   i += 1
#   puts "Numbers now: #{numbers}"
#   puts "At the bottom i is #{i}"
# end

def counter(value)
  i = 0
  numbers = []
  while i < value
    puts "At the top i is #{i}"
    numbers.push(i)

    i += 1
    puts "Numbers now: #{numbers}"
    puts "At the botton i is #{i}"
  end 
  numbers
end

numbers = counter(6)

puts "The numbers: "

for num in numbers
  puts num
end
