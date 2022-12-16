# Modify loop so it runs 5 times instead of just one
iterations = 1

loop do
  puts "Number of iterations = #{iterations}"
  break if iterations >= 5
  iterations += 1 # increment iterator
end

# What if break statement was moved up a line? What would need to change?
# Answer: begin iterator at 0 instead of 1
iterations = 0

loop do
  break if iterations >= 5
  iterations += 1 # increment iterator
  puts "Number of iterations = #{iterations}"
end
