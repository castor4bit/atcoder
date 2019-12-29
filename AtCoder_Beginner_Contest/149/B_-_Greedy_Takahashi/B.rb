a, b, k = gets.chomp.split(" ").map(&:to_i)

if a >= k then
  puts "#{a - k} #{b}"
elsif (a + b) >= k then
  puts "0 #{b - (k - a)}"
else
  puts "0 0"
end
