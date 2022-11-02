INPUT1 = <<~"EOS"
  3 3 8
  5 3 7
  1 1 5
EOS
OUTPUT1 = <<~"EOS"
  3
EOS

INPUT2 = <<~"EOS"
  3 3 4
  1 4 2
  8 5 7
EOS
OUTPUT2 = <<~"EOS"
  0
EOS

n, m, k = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)

res = 0
a.each do |i|
  b.each do |j|
    res += 1 if i + j == k
  end
end

puts res
