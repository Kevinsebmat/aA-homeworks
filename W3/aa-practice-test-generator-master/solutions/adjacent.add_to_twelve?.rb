# Problem 4: You have array of integers. Write a recursive solution to determine
# whether or not two adjacent elements of the array add to 12.

def add_to_twelve?(array)
  return false if array.length <= 1
  return true if array[0] + array[1] == 12
  add_to_twelve?(array.drop(1))
end
