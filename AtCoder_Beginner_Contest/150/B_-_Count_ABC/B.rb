n = gets.to_i
s = gets.chomp

count = 0
idx = 0
while idx < n - 2
  if s[idx, 3] == 'ABC'
    count += 1
    idx += 3
  else
    idx += 1
  end
end

puts count
