say_hello = true
number_of_hellos = 0

while say_hello
  puts 'Hello!'
  number_of_hellos += 1
  say_hello = false if number_of_hellos >= 5
end
