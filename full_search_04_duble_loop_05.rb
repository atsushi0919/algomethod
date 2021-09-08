INPUT1 = <<~"EOS"
  3
  level
  algomethod
  xxxxxx
EOS
OUTPUT1 = <<~"EOS"
  2
EOS

puts STDIN.read.split[1..].count { |s| s == s.reverse }
