n, q = gets.split(" ").map(&:to_i)
s = gets.chomp
lr = []
q.times { lr.push(gets.split(" ").map(&:to_i)) }

sum = Array.new(n + 1, 0)
(0..(n - 2)).each do |i|
  sum[i + 2] = sum[i + 1] + (s[i, 2] == 'AC' ? 1 : 0)
end

lr.each do |_lr|
  l, r = _lr
  puts sum[r] - sum[l]
end
