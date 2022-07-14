# @param {String} s
# @return {Integer}
def roman_to_int(s)
  hash = {
    "M" => 1000,
    "D" => 500,
    "C" => 100,
    "L" => 50,
    "X" => 10,
    "V" => 5,
    "I" => 1
  }
  

  r_to_i = s.chars.map { |r| hash[r] }
  values = r_to_i.map.with_index do |val, i|
    if r_to_i[i + 1].nil?
      val
    else
      r_to_i[i+1] > val ? -val : val
    end
  end
  # p values
  values.sum
end