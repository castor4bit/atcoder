s = gets.chomp

patterns = %w[dream dreamer erase eraser]
r = Regexp.new("^(#{patterns.join('|')})+$")

puts r.match(s).nil? ? 'NO' : 'YES'
