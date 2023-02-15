class Exercise

  # Assume that "str" is a sequence of words separated by spaces.
  # Return a string in which every word in "str" that exceeds 4 characters is replaced with "marklar".
  # If the word being replaced has a capital first letter, it should instead be replaced with "Marklar".
  def self.marklar(str)
    words = []

    str.split().each do |word|
      if word.length > 4
        punctuation = word[-1].match?(/[[:alpha:]]/) ? '' : word[-1]
        words <<= word[0] == word[0].upcase ? 'Marklar' + punctuation : 'marklar' + punctuation
      else
        words.append(word)
      end
    end

    return words.join(' ')
  end

  # Return the sum of all even numbers in the Fibonacci sequence, up to
  # the "nth" term in the sequence
  # eg. the Fibonacci sequence up to 6 terms is (1, 1, 2, 3, 5, 8),
  # and the sum of its even numbers is (2 + 8) = 10
  def self.even_fibonacci(nth)
    even_sum = 0
    prior_num = 0
    current_num = 1

    (nth-1).times do
      new_num = prior_num + current_num
      prior_num = current_num
      current_num = new_num
      even_sum += new_num.even? ? new_num : 0;
    end

    return even_sum
  end

end
