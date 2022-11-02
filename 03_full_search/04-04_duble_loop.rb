INPUT1 = <<~"EOS"
  algomethod
EOS
OUTPUT1 = <<~"EOS"
  9
EOS

INPUT2 = <<~"EOS"
  xxxxxxxxxx
EOS
OUTPUT2 = <<~"EOS"
  1
EOS

puts gets.chomp.chars.tally.length
