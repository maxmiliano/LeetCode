# @param {Integer[]} nums
# @return {Integer}
def pivot_index(nums)
  total_sum = nums.sum
  left_sum, right_sum = 0, 0

  nums.each_with_index do |n, i|
    if (i == 0) 
      left_sum = 0
      right_sum = total_sum - n
    elsif (i == nums.length - 1)
      left_sum = total_sum - n
      right_sum = 0
    else
      left_sum += nums[i - 1]
      right_sum -= n
    end
    return i if (right_sum == left_sum)
  end
  
  return -1
  
end