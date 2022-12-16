# Stop each loop after first iteration
loop do
  puts 'This is the outer loop.'

  loop do
    puts 'This is the inner loop.'
    break # break inner loop after single iteration
  end

  break #break outer loop after single iteration
end

puts 'This is outside all loops.'
