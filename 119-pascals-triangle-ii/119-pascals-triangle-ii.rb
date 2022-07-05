# @param {Integer} row_index
# @return {Integer[]}
def get_row(row_index)
  zero = [1]
  
  return zero if (row_index == 0)
  
  current = zero
  
  1.upto(row_index) do 
    current = next_row(current)
  end
  
  return current
  
end

def next_row(current)
  ([0] + current).zip(current + [0]).collect { |left, right| left + right}
end