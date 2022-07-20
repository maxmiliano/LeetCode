# @param {Character[][]} board
# @return {Boolean}
def is_valid_sudoku(board)
  lines = Array.new(9) { Array.new }
  cols = Array.new(9) { Array.new }
  boxes = Array.new(9) { Array.new }
  
  # Build arrays of lines, cols and boxes
  # only with valid digits (excluding ".")
  board.each_with_index do |line, i|
    lines[i] = line.each.select{ |c| c != "." }
    line.each_with_index do |c, j|
      cols[j].push(c) if c != "."
      boxes[find_box_index(i,j)].push(c) if c != "."
    end
  end
  return validate(lines) && validate(cols) && validate(boxes)
end
  
def validate(arr) 
  arr.each do |s|
    # each line, col and box must contain only uniq chars
    return false unless s.length == s.uniq.length
  end
  return true
end

def find_box_index(i, j)
  index = i/3 + (j/3)*3
  return index
end
