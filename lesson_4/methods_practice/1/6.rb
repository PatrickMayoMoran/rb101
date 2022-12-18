# WHat is the return value of the following statement and why?
['ant', 'bear', 'caterpillar'].pop.size
# return value is 11
# This is an example of chaining methods. Pop returns the last element in the
# array - caterpillar - and then size is called on this string. Size returns
# an integer of the number of characters in string
