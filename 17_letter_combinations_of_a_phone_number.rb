# @param {String} digits
# @return {String[]}
def letter_combinations(digits)
  mapping = {
    "2" => "abc",
    "3" => "def",
    "4" => "ghi",
    "5" => "jkl",
    "6" => "mno",
    "7" => "pqrs",
    "8" => "tuv",
    "9" => "wxyz"
    }
  
  result = []
  
  digits.each_char do |num|
    sub = []
    
    if result.length == 0
      result = mapping[num].split("")
    else
      mapping[num].each_char do |char|
        sub += result.map { |el| el + char }
      end
      
      result = sub
    end
  end
  
  result
end