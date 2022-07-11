# @param {Integer} n
# @return {Integer}
def climb_stairs(n)
  
  return n if n <= 3
  
  steps = 4.upto(n).each.inject([1, 2, 3]){|acc, i| acc << acc.last(2).sum}

  steps.last
  
end