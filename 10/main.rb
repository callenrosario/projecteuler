def sieve_of_eratosthenes(n)
  primes = (2..n).to_a
  primes.each_with_index do |p, i|
    next if p == 0 
    (i+p).step(n, p).each do |g|
      break if g > (n - 1)
      primes[g] = 0
    end
  end
  primes.delete(0)
  primes
end

p sieve_of_eratosthenes(2000000).inject(:+)
