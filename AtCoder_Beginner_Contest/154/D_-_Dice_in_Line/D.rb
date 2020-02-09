_, k = gets.split(" ").map(&:to_i)
p = gets.split(" ").map(&:to_i)

pp = p.map {|n| (n + 1) * 0.5 }
s = Array.new(p.size + 1)
s[0] = 0
(0..pp.size - 1).each do |i|
  s[i + 1] = s[i] + pp[i]
end

max = 0
(0..p.size - k).each do |i|
  n = s[i + k] - s[i]
  max = n if max < n
end

puts max
