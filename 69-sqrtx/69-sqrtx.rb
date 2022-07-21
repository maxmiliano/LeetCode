# @param {Integer} x
# @return {Integer}
def my_sqrt(x)
  
  return 0 if x == 0
  
  sol = 1
  i = 1
  while (sol <= x)
    i += 1
    sol = i * i
  end
  
  return i - 1
  
end