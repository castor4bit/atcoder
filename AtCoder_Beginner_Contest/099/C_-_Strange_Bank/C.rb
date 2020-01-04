n = gets.to_i

res = n
(0..n).each do |i|
  cc = 0
  t = i
  while t > 0
    cc += t % 6
    t /= 6
  end
  t = n - i
  while t > 0
    cc += t % 9
    t /= 9
  end

  res = cc if res > cc
end

puts res
