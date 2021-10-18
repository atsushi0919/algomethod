INPUT1 = <<~"EOS"
  2
EOS
OUTPUT1 = <<~"EOS"
  2
EOS

INPUT2 = <<~"EOS"
  3
EOS
OUTPUT2 = <<~"EOS"
  3
EOS

INPUT3 = <<~"EOS"
  10
EOS
OUTPUT3 = <<~"EOS"
  89
EOS

def solve(input_lines)
  n = input_lines.to_i
  dp = [1] + [0] * n

  1.upto(n) do |i|
    dp[i] += dp[i - 1]
    dp[i] += dp[i - 2] if 1 < i
  end

  dp[n]
end

puts solve(STDIN.read)
