# Euclid's Formula for Pythagorean Triples:
# a^2 + b^2 = c^2
# a = m^2 + n^2
# b = 2mn
# c = m^2 - n^2
# m > 0, n > 0, m > n

# Solve for b:
# eq1) a^2 + b^2 = c^2
# eq2) a + b + c = n
# c = n - a - b //from eq2
# c^2 = (n - a - b)^2
#     = (n - a - b)(n - a - b)
#     = n^2 - na - nb - na + a^2 + ab - nb + ab +b^2
# c^2 = n^2 - 2na - 2nb +a^2 + 2ab + b^2
# a^2 + b^2 = n^2 - 2na - 2nb +a^2 + 2ab + b^2 //subsititue c^2 in eq1
# 0 = n^2 - 2na - 2nb + 2ab
# 2nb = n^2 - 2na + 2ab
# 2nb - 2ab = n^2 - 2na
# 2b(n - a) = n^2 - 2na
# 2b(n - a) = n(n - 2a)
# 2b = (n(n - 2a))/(n - a)
# b = (n(n - 2 a))/(2(n - a))
#   = (n(n/2 - a))/(n - a)

def pythagorean_triple_product(n)
  (1..n/2).each do |a|
    if (n * (n / 2 - a) % (n - a)).zero?
      b = (n * (n / 2 - a) / (n - a))
      c = n - a - b
      return a * b * c
    end
  end
  false
end

p pythagorean_triple_product(1000)
