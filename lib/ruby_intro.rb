# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
arr.inject(0, :+)
end

def max_2_sum arr
  # YOUR CODE HERE
 sum(arr.sort.last(2))
end

def sum_to_n? arr, n
  # YOUR CODE HERE
return false if arr.empty?
(arr.empty? && n.zero?) || arr.combination(2).any? {|a, b| a + b == n }
end

# Part 2

def hello(name)
  # YOUR CODE HERE
"Hello, " + name
end

def starts_with_consonant? s
  # YOUR CODE HERE
!!(s[0] =~ /[bcdfghjklmnprstvwxyz]+/i)
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
int = s.to_i(2)
matching = /[^0-1]/.match(s)
(int % 4 == 0 and matching == nil and !s.empty?) ? true : false 
end

# Part 3

class BookInStock
# YOUR CODE HERE
  def initialize(isbn, price) 
    raise ArgumentError, 'ISBN cannot be empty' if isbn.length == 0
    raise ArgumentError, 'invalid ISBN' if !isbn =~ /[^0-9\-]/
    raise ArgumentError, 'Price has to be greater than zero' if price <= 0
    @isbn = isbn
    @price = price
  end
 
  attr_accessor :isbn
  attr_accessor :price
 
  def price_as_string
    return "\$" + sprintf("%.2f" % @price)
  end
end
