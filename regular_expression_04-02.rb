# 文字列 S の中にある asian という単語のあとに 5 単語以上が続くならば、
# その asian を global に置き換える。

INPUT1 = <<~"EOS"
  asian asean asian asian asean asian asian asean
EOS
OUTPUT1 = <<~"EOS"
  global asean global asian asean asian asian asean
EOS

def solve(input_lines)
  s = input_lines.chomp
  s.gsub(/asian(?=( [a-z]+){5})/, "global") << "\n"
end

puts solve(STDIN.read)
