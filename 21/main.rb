def divisors(number)
  divisors = [1]
  divisor = 2
  while divisor <= number
    while (number % divisor).zero?
      divisors << divisor
      number /= divisor
    end
    divisor += 1
  end
  divisors
end

p divisors(99)
