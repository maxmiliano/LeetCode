# @param {Integer[][]} matrix
# @param {Integer} target
# @return {Boolean}
def search_matrix(matrix, target)
  m, n = matrix.length, matrix[0].length
  
  visited_rows = Hash.new{false}
  
  return !matrix[0].index(target).nil? if m == 1
  
  i = m/2 - 1
  target_found = false
  
  while(!target_found)
    return !matrix[i].index(target).nil? if (target >= matrix[i][0] && target <= matrix[i][n-1])
    
    return false if visited_rows[i]
    visited_rows[i] = true
    
    if target < matrix[i][0]
      i = i - [(m-i)/2, 1].min
    else
      i = i + [(m-i)/2, 1].min
    end
    
    return false if (i < 0 || i > m - 1)
    
  end
  
end