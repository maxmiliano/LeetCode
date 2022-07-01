# @param {Integer[]} nums
# @return {Integer}
def max_sub_array(nums)
  sub_arrays = []
  
  max_sum = - (10 ** 4)
  sum = 0
  
  nums.each do |n|
    sum = (n > sum + n) ? n : sum + n
    max_sum = [sum, max_sum].max
    p [sum, n, max_sum]
  end

  max_sum
  
end

