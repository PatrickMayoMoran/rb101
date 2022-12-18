munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}
# Given the above Munsters hash, modify it so each family member also has 
# an entry "age_group" that describes whether they are a kid, adult, or senior
# kid: 0 - 17
# adult: 18 - 64
# senior: 65+

munsters.each do |_, hash|
  hash['age_group'] = 'kid' if hash['age'] < 18
  hash['age_group'] = 'adult' if hash['age'] > 17 && hash['age'] < 65
  hash['age_group'] = 'senior' if hash['age'] >= 65
end

p munsters
