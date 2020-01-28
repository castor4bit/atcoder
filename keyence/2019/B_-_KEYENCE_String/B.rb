s = gets.chomp

word = "keyence"
ss = ""
len = s.size - word.size

(0..(s.size - 1)).each do |i|
  ss = s.dup
  ss.slice!(i, len)
  break if ss == word
end

puts ss == word ? 'YES' : 'NO'
