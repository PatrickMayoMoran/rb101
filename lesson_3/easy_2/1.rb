ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

# See if "Spot" is present

ages["Spot"]
ages.include?("Spot")
ages.member?("Spot")
ages.fetch("Spot", "No spot here")
ages.key?("Spot")
ages.has_key?("Spot")
