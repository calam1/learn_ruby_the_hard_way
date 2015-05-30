first, second, third = ARGV

puts "Your first variable is #{first}"
puts "Your second variable is #{second}"
puts "Your third variable is #{third}"

#so you can either clear ARGV and use gets.chomp or just use $stdin.gets
#ARGV.clear

print "Give me a fourth value: "
#fourth = gets.chomp
fourth = $stdin.gets
puts "The fourth value is #{fourth}"
