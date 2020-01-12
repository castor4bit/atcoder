n, k, m = gets.split(" ").map(&:to_i)
a = gets.split(" ").map(&:to_i)

score = m * n - a.inject(:+)

score = 0 if score < 0
score = -1 if score > k

puts score
