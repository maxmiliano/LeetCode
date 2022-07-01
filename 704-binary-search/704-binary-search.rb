# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def search(nums, target)
  left = 0 
  right = nums.length - 1
  while left <= right
    i = (left + right) / 2
    offset = ((right - left) / 2) 
    offset = 1 if offset == 0
    if nums[i] == target
      return i
    elsif target > nums[i]
      left += offset
    else
      right -= offset
    end
  end
  return -1
end
