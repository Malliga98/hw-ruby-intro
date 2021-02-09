# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  arr.inject(0,:+)
end

def max_2_sum arr
  # YOUR CODE HERE
  if arr.size == 0
    return 0
  elsif arr.size == 1
    return arr[0]
  else
    arrsrt = arr.sort()
    sum = arrsrt[arrsrt.size-1] + arrsrt[arrsrt.size-2]
    return sum
  end
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  elem = arr.combination(2).select {|j,k| j + k == n}
  
  if elem.empty?  
    return false
  else
    return true
  end
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, " + name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if /[bcdfghjklmnprstvwxyz]/i.match(s[0]) != nil 
    return true
  else
    return false
  end
  
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if  /^[01]+$/.match(s)
    num = s.to_i(2)
    if num % 4 == 0
      return true
    else 
      return false
    end
  else 
    return false
  end
  
end

# Part 3

class BookInStock
# YOUR CODE HERE
def initialize(isbnarg,pricearg)
  #initialise attributes and check for valid arguments
  if isbnarg.empty?
    raise ArgumentError,'Invalid ISBN number'
  end
  
  if pricearg <= 0.0
    raise ArgumentError,'Invalid price'
  end
  
  @isbn = isbnarg
  @price = pricearg
  
end
#getters
def price
  @price
end

def isbn
  @isbn
end

#setter 

def isbn=(isbnarg)
  @isbn = isbnarg
end

def price=(pricearg)
  @price = pricearg
end

def price_as_string
  return "$%0.2f"%[@price]
end

end
