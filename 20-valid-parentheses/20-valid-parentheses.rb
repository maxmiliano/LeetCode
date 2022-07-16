# @param {String} s
# @return {Boolean}
def is_valid(s)
  par_stack = Array.new
  
  open_chars = ['(', '{', '[']
  close_chars_map = { 
    '(' => ')',
    '{' => '}',
    '[' => ']',
  }
  
  s.chars.each do |c|
    if open_chars.include?(c)
      par_stack.push(c) 
    else
      last_opened = par_stack.pop
      return false if (c != close_chars_map[last_opened])
    end
  end
  
  return par_stack.empty?
  
end