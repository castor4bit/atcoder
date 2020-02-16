_ = gets
a = gets.split(" ").map(&:to_i)

result = true
a.each do |n|
  next if n.odd?

  if n % 3 != 0 && n % 5 != 0
    result = false
    break
  end
end

puts result ? 'APPROVED' : 'DENIED'
