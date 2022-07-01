# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Float}
def find_median_sorted_arrays(nums1, nums2)
  merged = merge_sorted_arrays(nums1, nums2)
  median(merged)
end

def merge_sorted_arrays(a1, a2)
  merged = []
  
  if a1.empty?
    return merged + a2
  elsif a2.empty?
    return merged + a1
  else
    if a1[0] < a2[0]
      merged << a1.shift
    else
      merged << a2.shift
    end    
    return merged + merge_sorted_arrays(a1, a2)
  end
end

def median(a) 
  return nil if a.empty?
  len = a.length
  (a[(len - 1) / 2] + a[(len / 2)]) / 2.0
end