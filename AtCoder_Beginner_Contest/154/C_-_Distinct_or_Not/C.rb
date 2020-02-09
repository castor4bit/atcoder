_ = gets
a = gets.split(" ").map(&:to_i)
a.sort!

puts a == a.uniq ? "YES" : "NO"
