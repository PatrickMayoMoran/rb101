ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
# remove people with ages 100 or greater
ages.select! { |name, age| age < 100 }
# Or...
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
ages.reject! { |name, age| age >= 100 }
