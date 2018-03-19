# @param {String} s
# @return {Integer}
def roman_to_int(s)
  conversion = {
    "I" => 1,
    "V" => 5,
    "X" => 10,
    "L" => 50,
    "C" => 100,
    "D" => 500,
    "M" => 1000
  }

  sum = 0
  curr_numeral_sum = 0

  s.each_char.with_index do |numeral, idx|
    if idx == 0 || numeral == s[idx - 1]
      curr_numeral_sum += conversion[numeral]
      sum += conversion[numeral]
    else
      if conversion[numeral] > conversion[s[idx-1]]
        sum -= 2 * curr_numeral_sum
        curr_numeral_sum = 0
      end

      sum += conversion[numeral]
      curr_numeral_sum = conversion[numeral]     
    end
  end

  sum
end

# ALSO WORKS

# @param {String} s
# @return {Integer}
# def roman_to_int(s)
#   conversion = {
#     "I" => 1,
#     "V" => 5,
#     "X" => 10,
#     "L" => 50,
#     "C" => 100,
#     "D" => 500,
#     "M" => 1000
#   }

#   sum = 0
#   curr_numeral_sum = 0

#   s.each_char.with_index do |numeral, idx|
#     if conversion[numeral] > conversion[s[idx-1]]
#       sum -= 2 * curr_numeral_sum
#       curr_numeral_sum = 0
#     end

#     sum += conversion[numeral]
#     curr_numeral_sum = conversion[numeral]     
#   end

#   sum
# end