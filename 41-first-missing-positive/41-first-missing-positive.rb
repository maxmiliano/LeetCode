# @param {Integer[]} nums
# @return {Integer}
def first_missing_positive(nums)
  
  hash = Hash.new {0}
  
  # We don't care about duplicates neither non-positive
  sorted = nums.uniq.select{|n| n > 0}.sort

  missing_so_far = 1
  0.upto(sorted.length-1).each do |i|
    missing_so_far += 1 if sorted[i] == missing_so_far
    return missing_so_far if sorted[i] > missing_so_far
  end

  # Didn't find any missing in the array
  # So it must only be the "next one" 
  return sorted.length + 1
  
  
end