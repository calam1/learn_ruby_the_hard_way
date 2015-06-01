cities = {'CA' => 'San Francisco',
'MI' => 'Detroit',
'FL' => 'Jacksonville'}

cities['NY'] = 'New York'
cities['OR'] = 'Portland'

def find_city(map, state)
  if map.include? state
    map[state]
  else
    "Not Found"
  end
end

cities[:find] = method(:find_city)

while true
  print "State? (ENTER to quit) "
  state = STDIN.gets.chomp

  break if state.empty?

  
  puts cities[:find].call(cities, state)
end