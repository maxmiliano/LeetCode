# @param {String} s
# @return {Integer}
def length_of_longest_substring(s)
  longest = 0
  left = 0
  right = 0
  str = []
  
  while right < s.length
    if str.include?(s[right])
      left = str.index(s[right]) + 1
      str = str[left..-1]
      str.push(s[right])
    else
      str.push(s[right])
      longest = [longest, str.length].max
    end
    right += 1
  end
  return longest
end


