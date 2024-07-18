#write your code here

def add(a, b)
    a + b
end

def subtract(a, b)
    a - b
end

def sum(array)
    array.reduce(0, :+)
end

def multiply(*numbers)
    numbers.reduce(1, :*)
  end
  
def power(base, exponent)
    base ** exponent
end
  
def factorial(n)
    return 1 if n == 0
    (1..n).reduce(1, :*)
end