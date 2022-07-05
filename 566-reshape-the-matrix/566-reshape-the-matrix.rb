# @param {Integer[][]} mat
# @param {Integer} r
# @param {Integer} c
# @return {Integer[][]}
def matrix_reshape(mat, r, c)
  line = mat.flatten
  return mat unless ((r*c) == line.length)
  
  new_array = Array.new(r) { Array.new(c) }
  
  li = 0
  r.times do |ir|
    c.times do |ic|
      new_array[ir][ic] = line[li]
      li += 1
      # p new_array
    end
  end
  
  return new_array
  
end