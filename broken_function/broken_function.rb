# frozen_string_literal: true
# my_functions.rb

class BrokenFunctions
  def odd_even(n)
    if n.even?
      puts 'Even number.'
    else
      puts 'Odd number.'
    end
  end

  def is_prime(n)
    if n <= 1
      return false
    elsif n <= 3
      return true
    elsif n.even? || (n % 3).zero?
      return false
    end

    i = 5
    while i * i <= n
      return false if (n % i).zero? && (n % (i + 2)).zero?

      i += 2
    end
    true
  end

  def find_longest_and_shortest_words(words)
    longest_word = ''
    shortest_word = words[0]
    words.each do |word|
      if word.length > longest_word.length
        longest_word = word
      elsif word.length < shortest_word.length
        shortest_word = word
      end
    end

    [shortest_word, longest_word]
  end
end
