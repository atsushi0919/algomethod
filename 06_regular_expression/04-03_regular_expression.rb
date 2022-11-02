# 文字列 S のなかに、algo のあとに来るのが rithm でも method でもないような、
# algo + 5 文字以上の文字からなる部分文字列が含まれているかを答えてください。

INPUT1 = <<~"EOS"
  algorithmer
EOS
OUTPUT1 = <<~"EOS"
  No
EOS

INPUT2 = <<~"EOS"
  algometho
EOS
OUTPUT2 = <<~"EOS"
  Yes
EOS

INPUT3 = <<~"EOS"
  algomethodalgorithmalgoshiki
EOS
OUTPUT3 = <<~"EOS"
  Yes
EOS

def solve(input_lines)
  s = input_lines.chomp
  /algo(?!method)(?!rithm)[a-z]{5,}/.match(s) ? "Yes" : "No"
end

puts solve(STDIN.read)
