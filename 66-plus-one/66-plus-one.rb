# @param {Integer[]} digits
# @return {Integer[]}
def plus_one(digits)
  plus_one_at(digits, digits.length - 1)
end

def plus_one_at(digits, i)

  digits[i] = digits[i] + 1

  if digits[i] >= 10
    digits[i] -= 10
    if (i > 0)  
      plus_one_at(digits, i - 1) 
    else
      digits.insert(0, 1)
    end
  end
  
  digits
end