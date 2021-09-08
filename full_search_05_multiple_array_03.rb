INPUT1 = <<~"EOS"
  3 3 2
  1 2 3
  4 5 6
  6 10
EOS
OUTPUT1 = <<~"EOS"
  2
EOS

INPUT2 = <<~"EOS"
  3 3 3
  1 1 1
  2 2 2
  3 3 3
EOS
OUTPUT2 = <<~"EOS"
  27
EOS

x, y, z = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)
c = gets.split.map(&:to_i)

res = 0
c.each do |k|
  a.each do |i|
    b.each do |j|
      res += 1 if i + j == k
    end
  end
end

puts res
