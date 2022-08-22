# @param {Integer} n
# @return {Boolean}
def is_power_of_four(n)

  return true if n == 1
  
  m = 4
  
  while(m <= n) do
    return true if m == n
    m = m * 4
  end
  
  return false
  
end