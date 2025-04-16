# statistics.rb
class Statistics
  def initialize(numbers)
    @numbers = numbers
  end

  def find_max
    return @numbers.max()
  end

  def find_min
    return @numbers.min()
  end

  def average
    return @numbers.sum() / @numbers.length().to_f
  end

  def mode
    temp = @numbers.tally()
    max_count = temp.values.max
    return temp.select {|k, v| v == max_count}.keys
  end

  def even_numbers
    res = []
    @numbers.each {|num|
      if num % 2 == 0
        res.push(num)
      end
    }
    return res
  end

  def count_vowels(content)
    count = 0
    vowel = 'aeiou'
    temp = content.downcase()
    temp.each_char {|char|
      if vowel.include?(char)
        count += 1
      end
    }
    return count
  end

  def factorial(num)
    res = 1
    for i in 1..num
      res *= i
    end
    return res
  end
end
