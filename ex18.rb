def puts_two(*args)
  arg1, arg2 = args
  puts "arg 1: #{arg1}, arg2: #{arg2}"
end

def puts_two_again(arg1, arg2)
  puts "arg 1: #{arg1}, arg2: #{arg2}"
end

def puts_one(arg1)
  puts "arg 1: #{arg1}"
end

def puts_none
  puts "I got nothing."
end

puts_two("Zed", "Shaw")
puts_two_again("Zed", "Shaw")
puts_one("First")
puts_none