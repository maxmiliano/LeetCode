# @param {Integer[]} nums
# @return {Integer}
def single_number(nums)
  
  return nums[0] unless nums.length > 1
  
  hash = Hash.new { |h, k| h[k] = false}
  
  0.upto(nums.length - 1).each do |i|
    # p [i, nums[i], hash]
    if hash[nums[i]] 
      hash.delete(nums[i])
    else
      hash[nums[i]] = true  
    end
  end
  
  return hash.keys.first
  
end