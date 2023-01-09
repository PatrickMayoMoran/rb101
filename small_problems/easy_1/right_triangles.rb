# PROBLEM
#   What is the problem?
#     Given an integer, create a right triangle with that many stars
#   What is the goal
#     output a triangle of stars to the console
#
#   INPUT: integer
#   OUTPUT: nothing - printing to the screen
#
# EXAMPLES
# triangle(5)
#     *
#    **
#   ***
#  ****
# *****

#   EXPLICIT RULES
#     bottom line has given integer many stars
#   IMPLICIT RULES
#     begins with empty line
#
# DATA STRUCTURES
#   How is the data organized?
#   What structures might we use in our solution?
#
# ALGORITHM
#   What steps will we use to solve the problem?
#     iterate through given integer
#       on each iteration, print iteration number of spaces
#       after that, print given integer - iteration number of stars
#   What helper methods do we need? What will they do?
#
# CODE
def triangle(size)
  size.times do |index|
    puts "#{' ' * (size-index)}#{'*' * index}"
  end
  puts '*' * size
end

triangle(3)
triangle(9)
#     iterate through given integer
#       on each iteration, print size -  iteration number of spaces
#       after that, print iteration number of stars
