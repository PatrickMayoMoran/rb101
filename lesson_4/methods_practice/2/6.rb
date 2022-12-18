flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
# write code that changes all the entries to be just the first 3 letters
# do not create a new array

flintstones.map! { |name| name[0,3] }
