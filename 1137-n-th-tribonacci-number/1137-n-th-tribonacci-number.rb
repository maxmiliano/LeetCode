# @param {Integer} n
# @return {Integer}
def tribonacci(n)
  return 0 if n == 0
  return 1 if n == 1
  return 1 if n == 2
  
  3.upto(n).each.inject([0,1,1]){ |acc| acc << acc.last(3).inject(&:+)}.last
  
end