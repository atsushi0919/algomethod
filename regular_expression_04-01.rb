# 文字列 S のうち、r に挟まれた u を a に置換する

INPUT1 = <<~"EOS"
  aruru
EOS
OUTPUT1 = <<~"EOS"
  araru
EOS

INPUT2 = <<~"EOS"
  rulurururururulu
EOS

OUTPUT2 = <<~"EOS"
  rulurararararulu
EOS

def solve(input_lines)
  s = input_lines.chomp
  s.gsub(/ru(?=r)/, "ra") << "\n"
end

puts solve(STDIN.read)
