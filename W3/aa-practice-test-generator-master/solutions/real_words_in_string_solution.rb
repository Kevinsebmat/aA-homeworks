class String
  # Define a method `String#real_words_in_string(dictionary)` that returns an 
  # array of all the subwords of the string that appear in the dictionary 
  # argument. The method should NOT return any duplicates.

  def real_words_in_string(dictionary)
    real_words = []

    (0...self.length).each do |idx|
      (idx...self.length).each do |jdx|
        curr_word = self[idx..jdx]
        next if real_words.include?(curr_word)
        
        real_words << curr_word if dictionary.include?(curr_word)
      end
    end
    
    real_words
  end
end



  # def real_words_in_string(dictionary)
    
  #   subword_arr= []
  #    words = "erbearsweatmyajs"
  #       (0...words.length).each do |start_index|
  #         (start_index...words.length).each do |end_index|
  #            subword_arr << words[start_index..end_index] if dictionary.include?(words[start_index..end_index])
  #         end
  #       end
  #       subword_arr
  # end

  # p real_words_in_string(["bears", "ear", "a", "army"])