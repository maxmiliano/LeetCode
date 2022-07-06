# @param {Integer[]} nums
# @return {Integer}
def remove_duplicates(nums)
  
  return nums.length if (nums.length <= 1)
  
  i = 0
  last_uniq = nil
  
  while(!nums[i].nil?)
    
    if (nums[i] == last_uniq)
      nums.delete_at(i)
    else
      last_uniq = nums[i]
      i += 1
    end
    # p [i, nums]
  end
  
  return i
  
end