flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
# Find the index of the first name that starts with "Be"
be_index = nil
flintstones.each_with_index do |name, index|
  if name.start_with?("Be")
    be_index = index
    break
  end
end

flintstones.index { |name| name.start_with?("Be") }
