# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Integer[]}
def intersect(nums1, nums2)

  # key = number | value == how many times number is found in arry
  hash_1 = Hash.new(0)
  hash_2 = Hash.new(0)
  
  nums1.each do |n1|
    hash_1[n1] += 1
  end
  
  nums2.each do |n2|
    hash_2[n2] += 1
  end
  
  result = nums1.intersection(nums2).map do |item|
    Array.new([hash_1[item], hash_2[item]].min, item)
  end.flatten
  
  result
  
end