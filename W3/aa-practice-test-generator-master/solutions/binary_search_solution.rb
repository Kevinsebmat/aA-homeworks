class Array
  # Write a monkey patch of binary search:
  # E.g. [1, 2, 3, 4, 5, 7].my_bsearch(5) => 4
  # **Do NOT use the built in `Array#index` `Array#find_index`, `Array#include?`,
  # or `Array#member` methods in your implementation.**

  def my_bsearch(target)
    return nil if size == 0
    mid = size/2

    case self[mid] <=> target
    when 0
      return mid
    when 1
      return self.take(mid).my_bsearch(target)
    else
      search_res = self.drop(mid+1).my_bsearch(target)
      search_res.nil? ? nil : mid + 1 + search_res
    end
  end
end


  def bsearch(nums, target)
  # nil if not found; can't find anything in an empty array
  return nil if nums.empty?

  probe_index = nums.length / 2
  case target <=> nums[probe_index]
  when -1
    # search in left
    bsearch(nums.take(probe_index), target)
  when 0
    probe_index # found it!
  when 1
    # search in the right; don't forget that the right subarray starts
    # at `probe_index + 1`, so we need to offset by that amount.
    sub_answer = bsearch(nums.drop(probe_index + 1), target)
    sub_answer.nil? ? nil : (probe_index + 1) + sub_answer
  end

  # Note that the array size is always decreasing through each
  # recursive call, so we'll either find the item, or eventually end
  # up with an empty array.
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

