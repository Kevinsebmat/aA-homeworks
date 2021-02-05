# Write a recursive method `subsets(array)` that returns all of the subsets of 
# an array

# example => subsets([1,2,3])
# should return => [
#  [], 
#  [1], 
#  [2], 
#  [1, 2], 
#  [3], 
#  [1, 3], 
#  [2, 3], 
#  [1, 2, 3]
#  ]

def subsets(array)
  return [[]] if array.empty?

  subs = subsets(array[0..-2])
  subs.concat(subs.map{|el| el += [array.last]})
end


def subsets(arr)
  return [[]] if arr.empty?
​
  prev_result = subsets(arr[0...-1])
  result = prev_result.dup
  last_ele = arr[-1]
​
  prev_result.each do |sub|
    new_sub = sub.dup
    new_sub << last_ele
    result << new_sub
  end
​
  result
end
