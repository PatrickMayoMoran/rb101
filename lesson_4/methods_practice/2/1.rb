# Turn this array into a hash where the names are keys and the values are
# the position of the value in the array
flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

hash = {}
flintstones.each_with_index do |value, index|
  hash[value] = index
end

hash2 = {}
flintstones.each_with_object(hash2) do |value, hash|
  hash2[value] = flintstones.index(value)
end

p hash2
