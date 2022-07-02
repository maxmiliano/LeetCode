# @param {String} s
# @return {String}
def longest_palindrome(s)
  n = s.length
  
  return s if n < 2 # if s has only one char, it is the longest palindrome
  
  max_length = 1
  max_start = 0
  left, right = 0, 0
  
  0.upto(n - 1) do |i|
    left = i - 1
    right = i + 1
    
    while(right < n && s[right] == s[i]) 
      right += 1
    end
    
    while(left >= 0 && s[left] == s[i])
      left -= 1
    end
    
    while(left >= 0 && right < n && s[left] == s[right])
      left -= 1
      right += 1
    end
    
    length = right - left - 1
    if (max_length < length)
      max_length = length
      max_start = left + 1
    end
  end
  s[max_start, max_length]
end