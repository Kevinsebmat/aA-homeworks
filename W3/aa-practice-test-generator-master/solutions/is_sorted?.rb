# Problem 5: You have array of integers. Write a recursive solution to determine
# if the array is sorted.

def sorted?(array)
  return true if array.length <= 1
  return false if array[0] > array[1]
  sorted?(array.drop(1))
end