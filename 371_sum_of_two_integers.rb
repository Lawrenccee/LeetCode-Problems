# @param {Integer} a
# @param {Integer} b
# @return {Integer}
# ONLY WORKS FOR POSITIVE NUMS
# def get_sum(a, b)
#   result = []
#   a = a.to_s(2)
#   b = b.to_s(2)
#   longer = a.length > b.length ? a : b
#   shorter = a.length <= b.length ? a : b
#   carry = 0

#   length_diff = longer.length - shorter.length 

#   (shorter.length-1).downto(0).each do |index|
#     long = longer[index + length_diff].to_i
#     short = shorter[index].to_i

#     if (long & short & carry == 1) || (long ^ short ^ carry == 1) 
#       sum = 1
#     else
#       sum = 0
#     end

#     if (long & short == 1) || ((long | short) & carry == 1)
#       carry = 1
#     else
#       carry = 0
#     end   

#     result.unshift(sum)
#   end

#   (longer.length-shorter.length-1).downto(0).each do |index|
#     long = longer[index].to_i
#     sum = long ^ carry

#     if (long & carry == 1)
#       carry = 1
#     else
#       carry = 0
#     end

#     result.unshift(sum)
#   end

#   result.unshift(carry) if carry == 1
#   result.join.to_i(2)
# end

# @param {Integer} a
# @param {Integer} b
# @return {Integer}
def get_sum(a, b)
  max = 0x7FFFFFFF # 32-bit sign int, max
  min = 0x80000000 # 32-bit sign int, min
  mask = 0xFFFFFFFF

  while b != 0
    a, b = (a ^ b) & mask, ((a & b) << 1) & mask
  end


  if a <= max
    return a
  else
    ~(a ^ mask)
  end
end