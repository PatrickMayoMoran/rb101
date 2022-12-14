# def color_valid(color)
#   if color == "blue" || color == "green"
#     true
#   else
#     false
#   end
# end

# How could method be simplified without changing return value?

def color_valid(color)
  color == "blue" || color == "green"
end

# Just use the return value of the comparison
