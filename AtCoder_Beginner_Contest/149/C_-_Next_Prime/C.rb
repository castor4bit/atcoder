x = gets.to_i

def is_prime(n)
  return false if n < 2
  return true if n == 2

  return false if n % 2 == 0

  3.step(Math.sqrt(n), 2) do |i|
    return false if n % i == 0
  end

  true
end

while !is_prime(x) do
  x += 1
end

puts x
