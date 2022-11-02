INPUT1 = <<~"EOS"
  5
  level
  label
EOS
# 2

INPUT2 = <<"EOS"
10 
algomethod
algomethod
EOS
# 0

n, s, t = STDIN.read.split
res = 0
0.upto(n.to_i - 1) do |i|
  res += 1 if s[i] != t[i]
end
puts res
