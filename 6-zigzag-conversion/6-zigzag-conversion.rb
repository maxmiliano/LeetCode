# @param {String} s
# @param {Integer} num_rows
# @return {String}
def convert(s, num_rows)
  
  down = true
  i, j = 0, 0
  sol = Array.new(num_rows) {Array.new(s.length) {''}}
  
  return s if (num_rows == 1)
  
  s.chars.each do |c|
    sol[i][j] = c

    # Check if we're going down (or up-right)
    down = false if (down && i == num_rows-1)
    down = true if (!down && i == 0)    
    i += 1 if down
    if (!down)
      i -= 1
      j += 1
    end
  end
  sol.map(&:join).join
end