# @param {Integer[]} numbers
# @param {Integer} target
# @return {Integer[]}
def two_sum(numbers, target)
  visited = Hash.new
  
  left = 1
  right = numbers.length

  while (left < right)
    return [left, right] if numbers[left - 1] + numbers[right - 1] == target
    if numbers[left - 1] + numbers[right - 1] > target
      right -= 1
    else
      left += 1
    end
  end
end