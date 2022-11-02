INPUT1 = <<~"EOS"
  3
  2 4 7
EOS
OUTPUT1 = <<~"EOS"
  11
EOS

def solve(input_lines)
  n, *a = input_lines.split.map(&:to_i)
  dp = [0]

  1.upto(n - 1) do |i|
    t1 = dp[i - 1] + a[i]
    t2 = 1 < i ? dp[i - 2] + 2 * a[i] : 1.0 / 0
    dp << [t1, t2].min
  end
  dp[n - 1]
end

puts solve(STDIN.read)
