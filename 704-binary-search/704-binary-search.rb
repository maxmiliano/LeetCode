# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def search(nums, target)
  left = 0 
  right = nums.length - 1
  
  while left <= right
    i = (left + right) / 2
    if nums[i] == target
      return i
    elsif target > nums[i]
      left += 1
    else
      right -= 1
    end
  end
  
  return -1
  
end