n = gets.split(" ").map(&:to_i)

puts n.sort.join == '1479' ? 'YES' : 'NO'
