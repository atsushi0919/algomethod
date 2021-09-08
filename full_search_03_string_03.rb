s = gets.chomp
res = 0
0.upto(s.length - 2) do |i|
  res += 1 if s[i] == s[i + 1]
end
puts res
