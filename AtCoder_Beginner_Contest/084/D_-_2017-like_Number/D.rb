_ = gets.to_i
lr = []
rmax = 0
readlines.each do |line|
  l, r = line.split(" ").map(&:to_i)
  lr.push([l, r])
  rmax = [rmax, r].max
end

def is_prime(n)
  return false if n < 2
  return true if n == 2
  return false if n.even?

  num = n
  (3..Math.sqrt(n)).each do |i|
    num /= i if num % i == 0
  end

  [1, n].include?(num)
end

p = Array.new(rmax + 1, 0)
(0..(p.size + 1)).each do |i|
  p[i] = is_prime(i)
end

a = Array.new(rmax + 1, 0)
(0..a.size).each do |i|
  a[i + 1] = a[i]
  a[i + 1] += 1 if is_prime(i + 1) && is_prime((i + 2) / 2)
end

lr.each do |_lr|
  l, r = _lr
  puts a[r] - a[l - 1]
end
