ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

# Add up all the ages
ages.values.sum

total_age = 0
ages.each do |_, age|
  total_age += age
end
