h, n = gets.split(" ").map(&:to_i)
magics = []
amax = 0
n.times do
  a, b = gets.split(" ").map(&:to_i)
  magics.push([a, b])
  amax = a if amax < a
end

hh = h + amax
dp = Array.new(hh + 1, 1.0 / 0)
dp[0] = 0

(1..hh).step do |i|
  magics.each do |m|
    dp[i] = dp[i - m[0]] + m[1] if i - m[0] >= 0 && dp[i] > dp[i - m[0]] + m[1]
  end
end

puts dp[h..-1].min
