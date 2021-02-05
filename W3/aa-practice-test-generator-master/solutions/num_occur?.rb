# Problem 3: You have an unsorted array of integers. Write a recursive solution
# to count the number of occurrences of a specific value.

def num_occur(array, target)
  return 0 if array.empty?
  count_update = array.first == target ? 1 : 0
  count_update + num_occur(array.drop(1), target)
end