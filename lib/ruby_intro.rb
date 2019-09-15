# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  arr.inject(0, :+)
end

def max_2_sum arr
  # YOUR CODE HERE
  arr.sort.last(2).inject(0, :+)
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  hmap = Hash.new
  arr.each_with_index do |item,index|
    diff = n - item
    if hmap[diff]
      return true
    else
      hmap[item] = index
    end
  end
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  concatString = "Hello, " + name
return concatString
end

def starts_with_consonant? s
  # YOUR CODE HERE
  return (s =~ /[bcdfghjklmnpqrstvwxyz]/i) == 0
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if not(s.is_a? Integer) and !(s =~ /\A[-+]?[0-9]+\z/)
    return false
  end
  s = s.to_i
  if s%4 == 0
    return true
  else
   return false
  end
end

# Part 3

class BookInStock
# YOUR CODE HERE

  attr_accessor :isbn
	attr_accessor :price

	def initialize(isbn, price)
		raise ArgumentError, 
			"Illegal Argument" if isbn.empty?  or price <= 0
		@isbn = isbn
		@price = price
	end

	def price_as_string
		sprintf("$%2.2f", @price)
	end
end
