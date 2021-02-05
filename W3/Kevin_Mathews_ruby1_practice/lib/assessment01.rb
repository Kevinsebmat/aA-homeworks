class Array
  # Write an `Array#my_inject` method. If my_inject receives no argument, then
  # use the first element of the array as the default accumulator.
  # **Do NOT use the built-in `Array#inject` or `Array#reduce` methods in your 
  # implementation.**

  
 def my_inject(accumulator = nil, &prc)
    arr = self

    if accumulator.nil?
      accumulator = self.first
      arr = self.drop(1)
    end

    arr.each do |el|
      accumulator = prc.call(accumulator, el)
    end

    accumulator
  end
end

# Define a method `primes(num)` that returns an array of the first "num" primes.
# You may wish to use an `is_prime?` helper method.

def is_prime?(num)
   return false if num < 2
  (2...num).none? { |factor| num % factor == 0 }
end



def primes(num)
  primes = []

   i = 2
   until primes.length == num
    primes << i if is_prime?(i)

    i += 1
  end

  primes
end

# Write a recursive method that returns the first "num" factorial numbers.
# Note that the 1st factorial number is 0!, which equals 1. The 2nd factorial
# is 1!, the 3rd factorial is 2!, etc.

def factorials_rec(num)
  return [1] if num == 1\

  facts = factorials_rec(num - 1)
  facts << facts[-1] * (num - 1)
  facts
end

class Array
  # Write an `Array#dups` method that will return a hash containing the indices 
  # of all duplicate elements. The keys are the duplicate elements; the values 
  # are arrays of their indices in ascending order, e.g.
  # [1, 3, 4, 3, 0, 3, 0].dups => { 3 => [1, 3, 5], 0 => [4, 6] }

  def dups
    hash = Hash.new {|h, k| h[k] = [] }

    self.each_with_index do |ele, i|
      hash[ele] << i
    end

    hash.select { |k, v| v.count > 1 }
  end
end

class String
  # Write a `String#symmetric_substrings` method that returns an array of 
  # substrings that are palindromes, e.g. "cool".symmetric_substrings => ["oo"]
  # Only include substrings of length > 1.

  def symmetric_substrings #????? #coolio
    newarr=[]
    (0...self.length).each do |start_i|
      (2..(self.length - start_i)).each do |end_idx|
        sub= self[start_i...self.length]
        newarr << sub if sub == sub.reverse
      end
    end
    newarr
  end

end

class Array
  # Write an `Array#merge_sort` method; it should not modify the original array.
  # **Do NOT use the built in `Array#sort` or `Array#sort_by` methods in your 
  # implementation.**
  
  def merge_sort(&prc)
    Array.merge(&prc)
  end

  private
  def self.merge(left, right, &prc)
    merged_array = []
    until left.empty? || right.empty?
      
      merged_array << (prc.call(left.first) <prc.call(right.first)) ? left.shift : right.shift
    end
  
    merged_array + left + right
  end
end



