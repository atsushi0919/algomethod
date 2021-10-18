INPUT1 = <<~"EOS"
  3 2
  2 4 7
EOS
OUTPUT1 = <<~"EOS"
  11
EOS

INPUT2 = <<~"EOS"
  8 4
  3 1 4 1 5 9 2 6
EOS
OUTPUT2 = <<~"EOS"
  15
EOS

def solve(input_lines)
  n, m, *a = input_lines.split.map(&:to_i)
  dp = [0] + [1.0 / 0] * (n - 1)

  1.upto(n - 1) do |i|
    1.upto(m) do |j|
      break if i < j
      dp[i] = [dp[i], dp[i - j] + j * a[i]].min
    end
  end

  dp[n - 1]
end


puts solve(STDIN.read)

=begin
カメのアルルは N 個のマスを使って遊んでいます。それぞれのマスには数字が 1 つずつ書かれており、マス i には A_i
​
  が書かれています。(0 \leq i \leq N-1)(0≤i≤N−1)

アルルはマス 00 からスタートし、次のルールに従いながらマス N−1 を目指します。

マス ii にたどりつくには次の M つの方法がある。   
・ (存在するならば) マス i-1 から A_i秒かけて移動する。      
・ (存在するならば) マス i-2 から 2A_i秒かけて移動する。  

・ (存在するならば) マス i-M から MA_i秒かけて移動する。   
アルルがマス N-1N−1 になるべくはやくたどりつくように動きました。
アルルがマス N-1N−1 にたどりついたのは、マス 00 をスタートしてから何秒後か答えてください。
=end
