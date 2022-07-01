# @param {String} s
# @return {Integer}
def my_atoi(s)
  
  min = -(2 ** 31)
  max = (2 ** 31) - 1
  signal = 1
  
  r = 0
  s.strip.chars.each_with_index do |c, i|
    if i == 0 && ["+", "-"].include?(c)
      signal = -1 if c == "-"
    else
      if c.to_i.to_s == c
        r = r * 10 if r != 0
        r += c.to_i
      else
        break
      end
    end
  end
  
  r = r * signal
  
  r = min if r < min
  r = max if r > max
  
  r
  
end