# @param {Integer[]} nums
# @return {Void} Do not return anything, modify nums in-place instead.
def move_zeroes(nums)
  0.upto(nums.length-1) do |i|
    if nums[i] == 0
      j = i + 1
      while(nums[j] == 0 && j < nums.length-1)
        j += 1
      end
      if j <= nums.length - 1
        nums[i] = nums[j]
        nums[j] = 0
      end
    end
  end
end