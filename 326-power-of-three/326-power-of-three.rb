# @param {Integer} n
# @return {Boolean}
def is_power_of_three(n)
  
  m = 1
  
  while (m <= n)
    return true if m == n
    m = m*3
  end
  
  return false
  
end