# @param {Integer[]} nums
# @param {Integer} val
# @return {Integer}
def remove_element(nums, val)
  
  return 0 if nums.empty?
  
  i = nums.sort!.index(val)
  
  return nums.length if i.nil?
  
  while(nums[i] == val)
    nums.delete_at(i)
  end
  
  return nums.length
  
end