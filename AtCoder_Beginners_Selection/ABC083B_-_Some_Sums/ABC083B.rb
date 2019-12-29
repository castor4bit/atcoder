n, a, b = gets.chomp.split(" ").map(&:to_i)

sum = 0
for i in 1..n
  s = i.to_s.split("").map(&:to_i).inject(&:+)
  sum += i if s >= a and s <= b
end

puts sum
