# @param {Integer} n
# @return {String}
def count_and_say(n)
  
  # base case
  return "1" if n == 1
  
  # previous case (recursion)
  prev = count_and_say(n-1)
  
  c = ""
  new_say = ""
  count = 0
  0.upto(prev.length).each do |i| 
    if i == prev.length || c != prev[i]
      unless i == 0
        new_say = new_say + count.to_s + c
      end
      c = prev[i]
      count = 1
    else
      count += 1
    end
  end
  
  return new_say
  
end