class Hash
  # Write a `Hash#my_merge(other_hash)` method. This should NOT modify the 
  # original hash and return a combined version of both hashes.
  # **Do NOT use the built-in `Hash#merge` method in your implementation.**
  
  def my_merge(other_hash)
    duped_hash = self.dup

    other_hash.each do |k, v|
      duped_hash[k] = v
    end

    duped_hash
  end
end


  # def my_merge(other_hash)
  #   new_hash = self.dup
  #   other_hash.each do |k, v|
  #     if !new_hash.has_key?(k)
  #       new_hash[k] = v
  #     elsif new_hash.has_key?(k) && v > new_hash[k]
  #        new_hash[k] = v
  #     end
  #   end
  #     new_hash
  # end
