# @param {String} s
# @return {Boolean}
def is_palindrome(s)
  
  alphanumber = s.gsub(/[^0-9a-z]/i, '').downcase

  return alphanumber == alphanumber.reverse
    
end