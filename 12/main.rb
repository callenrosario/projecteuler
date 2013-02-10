def triangle_numbers(&block)
  number = 0
  index = 1
  while true
    number += index
    yield number
    index += 1
  end
end

def prime_factorization(number)
  factors = Hash.new(0)
  prime = 2
  while prime <= number
    while (number % prime).zero?
      factors[prime] += 1
      number /= prime
    end
    prime += prime > 2 ? 2 : 1
  end
  factors
end

# The prime factorization of
#       36 = 2 * 2 * 3 * 3 = 2^2*3*2.
#
# Now we can keep/remove any number of 2's or 3's and
# the product of the result will still be a factor of
# 36.
#
# So we can say that
#       2^(0..2)*3^(0..2)
# accounts for all factors of 36.
#
# We can see here that the number of possible states
# for 2 and 3 are 3. So we can just multiply the number
# of possible states of 2 and 3 to get the number of
# possible factors for 36.
#
# This results in
#       3 * 3 = 9.
#
# We can even further generalize this given some number
#       N = p0^q0 * p1^q0 * ... * pn^qn.
#
# Where
#       p0,p1,...,p0
# are unique prime numbers and
#       q0,q1,...,qn
# are the number of appearances of each prime,
# respecitively.
#
# Then, the number of primes is
#         (q0 + 1) * (q1 + 1) * ... * (pn + 1).
def num_factors(number)
  prime_factorization(number).values.inject(1){|s, v| s *= (v + 1)}
end

triangle_numbers do |n|
  d = num_factors(n)
  if d > 500 
    p n
    break
  end
end
