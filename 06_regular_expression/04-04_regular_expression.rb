INPUT1 = <<~"EOS"
  3 2021 11
  100_水草代10月_20211001.pdf
  101_水草代11月_20211101.pdf
  102_水草代12月_20211201.pdf
EOS
OUTPUT1 = <<~"EOS"
  水草代11月
EOS

INPUT2 = <<~"EOS"
  3 2021 11
  100_水草代11月_20211101.pdf
  101_水草代11月その2_20211102.pdf
  102_水草代11月その3_20211103.pdf
EOS
OUTPUT2 = <<~"EOS"
  水草代11月
  水草代11月その2
  水草代11月その3
EOS

def solve(input_lines)
  input_lines = input_lines.split("\n")
  n, y, m = input_lines.shift.split.map(&:to_i)
  s = input_lines.shift(n)

  ym = "%04d%02d" % [y, m]
  result = []
  s.each do |file_name|
    tmp = /[^_]+(?=_#{ym})/.match(file_name)
    result <<= tmp if tmp
  end
  result.join("\n") << "\n"
end

puts solve(STDIN.read)
