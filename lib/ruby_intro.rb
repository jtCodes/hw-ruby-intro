# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  total = 0
  arr.each do |x|
    total += x
  end
  return total
end

def max_2_sum arr
  sorted = arr.sort { |x,y| y <=> x}
  return 0 if arr.length == 0
  return arr[0] if arr.length == 1
  return sorted[0] + sorted[1]
end

def sum_to_n? arr, n
  new_arr = arr.combination(2).to_a
  new_arr.each do |x|
    return true if sum(x) == n
  end
  return false
end

# Part 2

def hello(name)
  return "Hello, " + name.to_s
end

def starts_with_consonant? s
  new_s = s.downcase
  if /\A(a|e|i|o|u)/.match(new_s) || new_s.length == 0 || /\W/.match(new_s)
    return false
  end
  return true
end

def binary_multiple_of_4? s
  if s.to_i(2) % 4 == 0 && !/\D/.match(s) && s.length >= 1 && s.is_a?(String)
    return true
  end
  return false
end

# Part 3

class BookInStock
  attr_accessor :isbn
  attr_accessor :price

  def initialize(isbn, price)
    if isbn.length == 0 || price <= 0
      raise ArgumentError
    end
    @isbn = isbn
    @price = price
  end

  def price_as_string
    return "$#{'%.2f' % @price}"
  end
end