n = gets.to_i
a = gets.split(" ").map(&:to_i)

dp = Array.new(n, 1.0 / 0)
dp[0] = 0

(0..(n - 2)).each do |i|
  dp[i + 1] = [dp[i + 1], dp[i] + (a[i] - a[i + 1]).abs].min
  dp[i + 2] = [dp[i + 2], dp[i] + (a[i] - a[i + 2]).abs].min if i + 2 < n
end

puts dp[-1]
