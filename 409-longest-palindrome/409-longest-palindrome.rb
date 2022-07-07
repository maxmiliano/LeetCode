# @param {String} s
# @return {Integer}
def longest_palindrome(s)
 
  return 0 if s.empty?
  
  chars = s.chars
  letters = chars.tally # count each uniq letter

  evens, odds = letters.partition { |k, v| v.even? }.map(&:to_h)
  # p [odds, evens]
  
  result = evens.values.sum # Evens letter make palindromes

  # Every two chars from even counts for our longest palindrome
  odds.values.each do |v|
    result += (v / 2) * 2
  end
  
  # Can pick any resting char from odds to put in the middle and still have a palindrome  
  result += 1 if odds.length > 0 
  
  result
  
end