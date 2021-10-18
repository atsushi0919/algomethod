INPUT1 = <<~"EOS"
  7 4
  2 3 5 6
EOS
OUTPUT1 = <<~"EOS"
  Yes
EOS

INPUT2 = <<~"EOS"
  11 6
  2 4 6 8 10 12
EOS
OUTPUT2 = <<~"EOS"
  No
EOS

INPUT3 = <<~"EOS"
  408 5
  226 36 96 524 655
EOS
OUTPUT3 = <<~"EOS"
  Yes
EOS

INPUT4 = <<~"EOS"
  592 8
  963 93 17 511 166 932 986 982
EOS
OUTPUT4 = <<~"EOS"
  Yes
EOS

INPUT5 = <<~"EOS"
  740 15
  840 924 393 5 302 280 212 447 121 646 190 607 623 159 711
EOS
OUTPUT5 = <<~"EOS"
  Yes
EOS

def solve(input_lines)
  n, m, *a = input_lines.split.map(&:to_i)

  dp = [true] + [false] * n
  0.upto(m - 1) do |i|
    a[i].upto(n) do |j|
      dp[j] = true if dp[j - a[i]]
    end
    break if dp[n]
  end

  dp[n] ? "Yes" : "No"
end

puts solve(STDIN.read)

=begin
カメのアルルはすごろく盤とサイコロを使ってすごろくで遊んでいます。

すごろく盤には N+1 個のマスがあり、 0 から N までの番号が振られています。
アルルはマス 0 からスタートし、ゴールのマス N を目指します。
また、サイコロはD_0, D_1, \cdots, D_{M-1}D 
0
 ,D 
1
 ,⋯,D 
M−1
​
  の M 種類の出目が等確率で出ます。
アルルはサイコロを振り、出た目の数だけ進むことを繰り返します。

このすごろくでは、ゴールのマスにちょうどたどりつかないとあがることはできません。
アルルがこのすごろくであがる可能性があるか答えてください。

N M
D_0, D_1, ... D_M−1
​
N は 1 以上 1000 以下の整数
M は 1 以上 20 以下の整数
D_i は 1 以上 1000 以下の整数 (0 \leq i \leq M-1)(0≤i≤M−1)
サイコロの出目の値はすべて異なる

=end
