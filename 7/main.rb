def nth_prime_number(n)
  primes = [2]
  number = 3
  i = 1
  while i < n
    primes << number
    i += 1
    primes.each do |p| 
      if number % p == 0 and number != p
        primes.pop
        i -= 1
        break
      end
    end
    number += 2
  end
  primes.last
end

p nth_prime_number(10001)
