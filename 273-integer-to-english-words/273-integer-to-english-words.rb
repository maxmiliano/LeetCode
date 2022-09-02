# @param {Integer} num
# @return {String}
def number_to_words(num)
  return "Zero" if num == 0
  return "One" if num == 1
  return "Two" if num == 2
  return "Three" if num == 3
  return "Four" if num == 4
  return "Five" if num == 5
  return "Six" if num == 6
  return "Seven" if num == 7
  return "Eight" if num == 8
  return "Nine" if num == 9
  return "Ten" if num == 10
  return "Eleven" if num == 11
  return "Twelve" if num == 12
  return "Thirteen" if num == 13
  return "Fourteen" if num == 14
  return "Fifteen" if num == 15
  return "Sixteen" if num == 16
  return "Seventeen" if num == 17
  return "Eighteen" if num == 18
  return "Nineteen" if num == 19
  return "Twenty" if num == 20
  return "Thirty" if num == 30
  return "Forty" if num == 40
  return "Fifty" if num == 50
  return "Sixty" if num == 60
  return "Seventy" if num == 70
  return "Eighty" if num == 80
  return "Ninety" if num == 90
  
  sol = ""
  sol << "#{number_to_words(num / 1000000000)} Billion " if num / 1000000000 > 0
  num %= 1000000000
  sol << "#{number_to_words(num / 1000000)} Million " if num / 1000000 > 0
  num %= 1000000
  sol << "#{number_to_words(num / 1000)} Thousand " if num / 1000 > 0
  sol << "#{number_to_words(num / 100 % 10)} Hundred " if num / 100 % 10 > 0
  if (num / 10 % 10 == 1) # 11 to 19
    sol << "#{number_to_words(num % 100)}"
  else
    sol << "#{number_to_words((num / 10 % 10) * 10)} " if num / 10 % 10 > 0
    sol << "#{number_to_words(num % 10)} " if num % 10 > 0    
  end
  
  sol.strip
  
end