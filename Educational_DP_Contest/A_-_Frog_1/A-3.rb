n = gets.to_i
h = gets.split(" ").map(&:to_i)

dp = Array.new(n, 1.0 / 0)

def rec(dp, h, i)
  return dp[i] if dp[i] < 1.0 / 0
  return 0 if i == 0

  res = 1.0 / 0
  res = [res, rec(dp, h, i - 1) + (h[i] - h[i - 1]).abs].min
  res = [res, rec(dp, h, i - 2) + (h[i] - h[i - 2]).abs].min if i >= 2
  dp[i] = res

  res
end

puts rec(dp, h, n - 1)
