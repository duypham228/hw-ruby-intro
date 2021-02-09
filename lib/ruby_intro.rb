# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  sum = 0
  for num in arr
    sum += num
  end
  return sum
end

def max_2_sum arr
  # YOUR CODE HERE
  sum = 0
  max1 = 0
  max2 = 0
  if arr.length() > 0
    max1 = arr.sort[-1]
  end
  if arr.length() > 1
    max2 = arr.sort[-2]
  elsif arr.length() == 1
    return max1
  end
  sum += max1 + max2
  return sum
end

def sum_to_n? arr, n
  # YOUR CODE HERE Brute Force
  result = false
  for index1 in (0...arr.length() - 1)
    for index2 in (index1 + 1 ... arr.length())
      if arr[index1] + arr[index2] == n
        result = true
        break
      end
    end
  end
  return result 

end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, #{name}"
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if s.length == 0
    return false
  else
    start = s[0]
    if start.match?(/[A-Za-z]/)
      return !start.match?(/[ueoaiUEOAI]/)
    end
    return false
  end
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  # get the number in base 10
  if s.count('01') == s.length && s.length > 0
    num = s.to_i(2)
    if num % 4 == 0
      return true
    end
    return false
  end
end

# Part 3

class BookInStock
# YOUR CODE HERE
  def initialize(isbn, price)
    raise ArgumentError.new("Expected Price Greater than zero") if price <= 0.0
    raise ArgumentError.new("Invalid ISBN number") if isbn.empty?
    @isbn = isbn
    @price = price
  end

  attr_accessor :isbn
  attr_accessor :price

  # Method
  def price_as_string
    result = "$" + ('%.2f' % @price).to_s
    return result
  end

end
