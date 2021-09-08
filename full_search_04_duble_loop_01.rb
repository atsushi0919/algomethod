INPUT1 = <<~"EOS"
  5
  1 2 3 4 5
EOS
OUTPUT1 = <<~"EOS"
  3
EOS

def prime?(num)
  return false if num < 2
  return true if num == 2 || num == 3
  return false if num % 2 == 0

  3.step(Math.sqrt(num).to_i, 2) do |div|
    return false if num % div == 0
  end
  true
end

#_, *ary = STDIN.read.split.map(&:to_i)
#puts ary.count { |num| prime?(num) }
