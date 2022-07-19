# @param {Integer} num_rows
# @return {Integer[][]}
def generate(num_rows)
  return [] if num_rows <= 0
  pascal = []
  num_rows.times do |i|
    pascal
    if i == 0
      pascal << [1]
    else
      pascal << next_row(pascal.last)
    end
  end
  return pascal
end

def next_row(current_row)
  # create a combination of parents for each child of the next_row and sum them both
  # first and last children have only one parent (represented by the [0] at both edges)
  ([0] + current_row).zip(current_row + [0]).collect { |left, right| left + right }
end