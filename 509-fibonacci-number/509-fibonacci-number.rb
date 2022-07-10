# @param {Integer} n
# @return {Integer}
def fib(n)
  return 0 if n == 0
  return 1 if n == 1
  
  2.upto(n).each.inject([0,1]){ |acc| acc << acc.last(2).inject(&:+) }.last
  
end