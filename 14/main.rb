def collatz_sequence(n, chains) 
  sequence = []
  tail = 0

  while n > 1
    if chains[n] > 0
      tail = chains[n]
      break
    else
      sequence << n
      n = (n % 2).zero? ? n / 2 : n*3 + 1
    end
  end

  length = sequence.length
  (0...length).each do |n|   
    chains[sequence[n]] = (length - n) + tail
  end

  chains
end

max = 1000000
chains = Hash.new(0) 
(1..max).each do |i|
  chains = collatz_sequence(i, chains)
end 

p chains.max_by{|k,v| v}
