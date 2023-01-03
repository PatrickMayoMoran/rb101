# PROBLEM
# Write a method that takes a short line and prints it in a box
#
# INPUT: string
# OUTPUT: string
#
# EXAMPLES
# print_in_box('To boldly go where no one has gone before.')
# +--------------------------------------------+
# |                                            |
# | To boldly go where no one has gone before. |
# |                                            |
# +--------------------------------------------+
# print_in_box('')
# +--+
# |  |
# |  |
# |  |
# +--+
#
# RULES
#   EXPLICIT
#     text will always be terminal width (72 characters)
#   IMPLICIT
#     text is centered in middle of 3 lines with space separator from box
#     at each end
#     minimum dimensions for an empty box that should be printed if string
#     is empty
#
# ALGORITHM
#   initialize an array with number of box lines
#   Make box top line
#     initialize to default top
#     add dashes the size of given string into middle
#   Make box first line
#     initialize to default filler
#     add spaces the size of given string into middle
#   Make box second line with string
#     initialize to default filler
#     add string to middle
#   make box third line
#   make box fourth line
#   print box
# 
# HELPER METHODS
# make line with border, filler, insert

CORNER = '+'
SIDE = '|'
TOP_BOTTOM = '-'
def make_line(border, filler, length=2)
  line = ''
  line << border * 2
  line.insert(1, filler * length)
end

def print_in_box(str)
  length = str.length
  box = Array.new(5)
  box[0] = make_line(CORNER, TOP_BOTTOM)
  box[1] = make_line(SIDE, ' ')
  box[2] = make_line(SIDE, ' ')
  box[3] = make_line(SIDE, ' ')
  box[4] = make_line(CORNER, TOP_BOTTOM)

  box[0].insert(2, TOP_BOTTOM * length)
  box[1].insert(2, ' ' * length)
  box[2].insert(2, str)
  box[3].insert(2, ' ' * length)
  box[4].insert(2, TOP_BOTTOM * length)
  p box
  puts box
end

print_in_box('To boldly go where no one has gone before.')
print_in_box('')
