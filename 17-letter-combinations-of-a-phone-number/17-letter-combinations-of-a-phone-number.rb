# @param {String} digits
# @return {String[]}
def letter_combinations(digits)
  map = {
  '2' => ['a', 'b', 'c'],
  '3' => ['d', 'e', 'f'],
  '4' => ['g', 'h', 'i'],
  '5' => ['j', 'k', 'l'],
  '6' => ['m', 'n', 'o'],
  '7' => ['p', 'q', 'r', 's'],
  '8' => ['t', 'u', 'v'],
  '9' => ['w', 'x', 'y', 'z'],
  }
  
  cached_letter_combinations(map, digits)
  
end

def cached_letter_combinations(map, digits)

  return [] if digits.length == 0
  return map[digits[0]] if digits.length == 1
  
  middle = digits.length / 2
  
  left = digits[0..(middle-1)]
  right = digits[middle..(digits.length-1)]
  
  map[left] ||= cached_letter_combinations(map, left)
  map[right] ||= cached_letter_combinations(map, right)
  
  # p [digits, map]
  
  return map[left]
    .product(map[right])
    .collect { |l,r| l+r }
  
  # return map[digits]
end