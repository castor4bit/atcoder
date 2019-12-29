n = gets.to_i
a = gets.split(" ").map(&:to_i)

a.sort!.reverse!

sum = 0
for i in 0..(a.size - 1)
  sum += a[i] * (i % 2 == 0 ? 1 : -1)
end

puts sum
