INPUT1 = <<~"EOS"
  6 7 0
  0 1
  0 5
  1 3
  1 5
  2 3
  3 4
  4 5
EOS
OUTPUT1 = <<~"EOS"
  2
EOS

INPUT2 = <<~"EOS"
  5 7 2
  0 2
  0 3
  1 2
  1 4
  2 3
  2 4
  3 4
EOS
OUTPUT2 = <<~"EOS"
  0
EOS

INPUT3 = <<~"EOS"
  5 5 0
  0 2
  2 4
  1 4
  0 1
  0 3
EOS
OUTPUT3 = <<~"EOS"
  1
EOS

def solve(input_lines)
  input_lines = input_lines.split("\n")
  n, m, x = input_lines.shift.split.map(&:to_i)
  a_b = input_lines.shift(m).map { |l| l.split.map(&:to_i) }

  h = (0...n).map { |k| [k, []] }.to_h
  a_b.each do |a, b|
    h[a] << b
    h[b] << a
  end

  result = []
  h[x].each do |f|
    h[f].each do |ff|
      unless (h[x] + [x] + result).include?(ff)
        result << ff
      end
    end
  end
  result.length
end

puts solve(STDIN.read)
