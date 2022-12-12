# This one mutates the first argument, modifying buffer in place
# This is doing two things: returns new value AND has a side effect
# methods doing more than one thing should be avoided
def rolling_buffer1(buffer, max_buffer_size, new_element)
  buffer << new_element
  buffer.shift if buffer.size > max_buffer_size
  buffer
end

# This one creates and returns a new array every time
# This one only does one thing - build and return new array
# it does not mutate or print to the screen, successfully doing one thing!
def rolling_buffer2(input_array, max_buffer_size, new_element)
  buffer = input_array + [new_element]
  buffer.shift if buffer.size > max_buffer_size
  buffer
end
