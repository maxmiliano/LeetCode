# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def search_insert(nums, target)

  left = 0
  right = nums.length - 1
  
  i = 0
  
  while (left <= right)
    i = (left + right) / 2
    
    if (nums[i] == target)
      return i
    elsif target > nums[i]
      left += 1
    elsif target < nums[i]
      right -= 1
    end
  end
  
  if target < nums[i]
    return i
  else
    return i + 1
  end
  
end