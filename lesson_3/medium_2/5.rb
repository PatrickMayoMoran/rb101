# def tricky_method(a_string_param, an_array_param)
#   a_string_param += "rutabaga"
#   an_array_param << "rutabaga"
# end
# 
# my_string = "pumpkins"
# my_array = ["pumpkins"]
# tricky_method(my_string, my_array)
# 
# puts "My string looks like this now: #{my_string}"
# puts "My array looks like this now: #{my_array}"

# Depending on methods to mutate arguments is tricky
# Let's make this easier for future programmers
# Let's make method non destructive, but still end with new values
# for my_string and my_array

def tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param +=  ["rutabaga"]

  return a_string_param, an_array_param
end

my_string = "pumpkins"
my_array = ["pumpkins"]
my_string, my_array = tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"
