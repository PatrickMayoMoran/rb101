advice = "Few things in life are as important as house training your pet dinosaur."

# Shorten the sentence - use string.slice! to make return value:
# "Few things in life are as important as "
# but leave the advice variable as "house training your pet dinosaur."
p advice.slice!(0, advice.index('house'))
p advice
