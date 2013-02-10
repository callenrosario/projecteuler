def sum_of_digits(n)
  n.to_s.split("").collect(&:to_i).inject(:+)
end

p sum_of_digits(2**1000)
