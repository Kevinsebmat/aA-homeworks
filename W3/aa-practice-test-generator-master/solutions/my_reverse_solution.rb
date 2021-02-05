class Array
  # Write an `Array#my_reverse` method that reverses the order in which elements
  # appear within the array. **Do NOT use the built-in `Array#reverse` method
  # in your implementation.**
  
  def my_reverse
    reversed = []

    self.each do |el|
      reversed.unshift(el)
    end

    reversed
  end
end
----------------------------------------------------------------
def reverse(string)
  return string if string.length <= 1
  string[-1] + reverse(string.slice(1, string.length - 2)) + string[0]
end