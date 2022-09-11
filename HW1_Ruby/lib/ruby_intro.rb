# frozen_string_literal: true

# Part 1

def sum(arr)
  # YOUR CODE HERE
  if arr.length == 0
    return 0
  else
    sum_ = 0
    for ele in arr
      sum_ += ele
    end
    return sum_
  end
end

def max_2_sum(arr)
  # YOUR CODE HERE
  if arr.length == 0
    return 0
  elsif arr.length == 1
    return arr[0]
  else
    arr_sorted = arr.sort
    ele1 = arr_sorted[-1]
    ele2 = arr_sorted[-2]
    return ele1+ele2
  end
end

def sum_to_n?(arr, number)
  # YOUR CODE HERE
  if arr.length == 1
    return false
  end
  arr_sorted = arr.sort
  for ele in arr_sorted
    return arr_sorted.include? (number-ele)
  end
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, #{name}"
end

def starts_with_consonant?(string)
  # YOUR CODE HERE
  if string.length == 0
    return false
  elsif !(string[0].match? (/[[:alpha:]]/))
    return false
  end 
  vowel = ["A", "E", "I", "O", "U"]
  return !(vowel.include? string.upcase[0])
end

def binary_multiple_of_4?(string)
  # YOUR CODE HERE
  if (string.length == 0) or !(string.delete('01') == '')
    return false
  end 
  num = string.to_i(2)
  if num%4 == 0
    return true
  else
    return false
  end
end

# Part 3

# Object representing a book
class BookInStock
  # YOUR CODE HERE
  attr_accessor :isbn, :price
  def initialize(isbn, price)
    @isbn = isbn
    @price = price
    if (@isbn.empty?) or @price <= 0
      raise ArgumentError
    end
  end

  def price_as_string()
    return "$#{'%.2f' % price}"
  end
end
