# @param {Integer[]} digits
# @return {Integer[]}
def plus_one(digits)
  # (digits.join("").to_i + 1).to_s.split("").map { |el| el.to_i }
  
  # OR
  
  digits[-1] += 1
  carry = digits[-1] / 10
  digits[-1] = digits[-1] % 10
  
  if carry > 0
    (digits.length-2).downto(0) do |idx|
      digits[idx] += carry
      carry = digits[idx] / 10
      digits[idx] = digits[idx] % 10
    end
  end
  
  if carry > 0
    digits.unshift(1)
  end
  
  digits
end