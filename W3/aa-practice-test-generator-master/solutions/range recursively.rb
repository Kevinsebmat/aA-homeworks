
# Write a recursive method, range, 
# that takes a start and an end and 
# returns an array 
# of all numbers in that range, exclusive. 


def range(min, max)
  return [] if max <= min
  range(min, max - 1) << max - 1
end