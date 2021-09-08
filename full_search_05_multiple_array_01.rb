INPUT1 = <<~"EOS"
  3 3
  1 4 6
  3 7 4
EOS
OUTPUT1 = <<~"EOS"
  3
EOS

INPUT2 = <<~"EOS"
  3 3
  1 4 2
  8 5 7
EOS
OUTPUT2 = <<~"EOS"
  0
EOS

_, a, b = STDIN.read.split("\n").map do |line|
  line.split.map(&:to_i)
end

res = 0
a.each do |num_a|
  b.each do |num_b|
    res += 1 if num_a > num_b
  end
end
puts res
