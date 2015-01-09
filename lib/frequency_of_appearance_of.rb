class String
  define_method(:'frequency_of_appearance_of') do |word_to_count|

    phrase_with_punctuation_removed = gsub(/[.,;?'"]/, ' ')
    count = 0

    phrase_with_punctuation_removed.split().each() do |word_from_phrase|
      if(word_to_count == word_from_phrase)
        count += 1
      end
    end

    count
  end
end
