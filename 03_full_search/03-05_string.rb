INPUT1 = <<~"EOS"
  algomethod
  met
EOS
# 2

INPUT2 = <<"EOS"
  algomethod
  god
EOS
# 0

s, t = STDIN.read.split
puts s.include?(t) ? "Yes" : "No"
