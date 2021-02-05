
require "byebug"
def range_rec(min, max)
#    newarr= []
#
  return [] if max <= min
  
    range_rec(min, max - 1) << max - 1
    #  += range_rec(min,max-1) #[3,4]
end


def range_it(min,max )[3,4,5]
    newarr=[]
    return [] if max  < min
    (min...max).each {|ele| newarr << ele}
    newarr #.sum
 # if end < start return []
 # make range from start to end 
 # make exclusive aka (...)
 #new_arr and then shovle each iteration into it
 # maybe add .sum at end
 
end

def exponentiation(b, exponent)
    return 1 if exponent == 0
    return b if exponent == 1
    exponentiation(b, exponent - 1) * b
end




class Array

    def dup
        newarr=[]
        self.each do |ele|
            if self.is_a?(Array) 
                newarr << ele.dup
            else
               newarr << ele
            end
        end
        newarr
    end


    def self.fibonacci(n)
        return [] if n == 0
        return [0] if n == 1
        base=[0,1]
       while base.length < n
            base << base[-1] + base[-2]
       end
       base
    end


end

def bsearch(array,target)
    return nil if array.empty?
    pivot_idx = array.length / 2
    if target == array[pivot_idx]
        return pivot_idx
    end

    if target < array[pivot_idx]
        bsearch(array[0...pivot_idx], target)
    else
        answer = bsearch(array[pivot_idx+1..-1],target) #[5]
          if answer == nil 
             return nil
         else
            return answer + pivot_idx + 1
        end
    end
  
end

class Array#[2,4,5,2,1]

    def merge_sort
        return self if self.length < 2
        pivot_idx = self.length / 2
        
        left = self[0...pivot_idx].merge_sort
        right = self[pivot_idx..-1].merge_sort

        self.merge(left, right) 
    end

  def merge(left, right)
        new_arr = []
        until left.empty? || right.empty?
            if left.first <= right.first
                new_arr << left.shift
            else
                new_arr << right.shift
            end
        end
    new_arr + left + right
    end
end
# arr = [22,3,4,5,3,62]

# p arr.merge_sort
def subsets(arr)
 return [arr] if arr.empty?
subsets(arr[])
end