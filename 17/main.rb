def to_eng(n)
  suffix = { 
    2: "hundred",
    3: "thousand",
    6: "million"
  }

  result = []
  n = n.to_s.reverse

  result << digit1(n[0])
  result << digit2
end

def digit1(n)
  case n.to_i
  when 0
    "zero"
  when 1
    "one"
  when 2
    "two"
  when 3
    "three"
  when 4
    "four"
  when 5
    "five"
  when 6
    "six"
  when 7
    "seven"
  when 8
    "eight"
  when 9
    "nine"
end

def digit2(n)
  case n.to_i
  when 1
    "ten"
  when 2
    "twenty"
  when 3
    "thirty"
  when 4
    "fourty"
  when 5
    "fifty"
  when 6
    "sixty"
  when 7
    "seventy"
  when 8
    "eighty"
  when 9
    "ninety"
end
