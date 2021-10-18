INPUT1 = <<~"EOS"
  3
EOS
OUTPUT1 = <<~"EOS"
  4
EOS

INPUT2 = <<~"EOS"
  10
EOS
OUTPUT2 = <<~"EOS"
  274
EOS

def solve(input_lines)
  n = input_lines.to_i
  dp = [1] + [0] * n

  1.upto(n) do |i|
    dp[i] += dp[i - 1]
    dp[i] += dp[i - 2] if 1 < i
    dp[i] += dp[i - 3] if 2 < i
  end

  dp[n]
end

puts solve(STDIN.read)

=begin
縦の長さが 11、横の長さが 11 の正方形
縦の長さが 11、横の長さが 22 の長方形
縦の長さが 11、横の長さが 33 の長方形
=end
