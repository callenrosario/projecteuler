def factorial(n)
  (n.downto 1).inject(:*)
end

def digit_sum(n)
  n.to_s.split("").collect(&:to_i).inject(:+)
end

p digit_sum(factorial(100))
