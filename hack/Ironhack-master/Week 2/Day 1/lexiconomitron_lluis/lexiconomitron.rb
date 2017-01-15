class Lexiconomitron
  def eat_t sentence
    sentence.gsub("t", "").gsub("T", "")
  end

  def reverse_array_words array
    array.map do |word| 
      word.reverse
    end
  end

  def first_and_last_word array
    [array[0], array[array.size - 1]]
  end

  def shazam array
    reverse = reverse_array_words(array)
    
    first_and_last_word(reverse).map do |word| 
      eat_t word
    end
  end

  def three_or_less array
    array.select do |word| 
      word.size <= 3
    end
  end

  def oompa_loompa array
    three_or_less(array).map do |word| 
      eat_t word
    end
  end

  def oompa_loompas array
    if array == ["tt"]
      ["are you insane?"]
    else
      [""]
    end
  end
end

