n = gets.to_i

d = Array.new(10, 0)
(0..9).each do |i|
  d[i] = Array.new(10, 0)
end

count = 0
(1..n).each do |i|
  s = i.to_s
  next if s[0] == "0" || s[-1] == "0"

  d[s[0].to_i][s[-1].to_i] += 1
end

(1..9).each do |i|
  (1..9).each do |j|
    count += d[i][j] * d[j][i]
  end
end

puts count
