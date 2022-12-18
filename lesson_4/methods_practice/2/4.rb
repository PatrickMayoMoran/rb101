ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }
# pick out the minimum age
ages.values.min
# Or... looping practice
min_age = 1000
ages.each do |name, age|
  if age < min_age
    min_age = age
  else
    next
  end
end
p min_age
