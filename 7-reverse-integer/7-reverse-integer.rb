# @param {Integer} x
# @return {Integer}
def reverse(x)
  
  min = -(2 ** 31)
  max = (2 ** 31) - 1
  
  signal = x < 0 ? -1 : 1
  reverse = x.to_s.reverse.to_i * signal
  
  return 0 if (reverse < min || reverse > max)
  
  return reverse
end