k, x = gets.split(" ").map(&:to_i)

msg = k * 500 >= x ? 'Yes' : 'No'
puts msg
