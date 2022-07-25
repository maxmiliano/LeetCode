# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def search_range(nums, target)
  i = first = nums.index(target)
  
  return [-1, -1] unless i
  
  while(nums[i] == target)
    i += 1
  end
  
  return [first, i-1]
end