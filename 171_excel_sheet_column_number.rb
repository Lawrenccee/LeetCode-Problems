# @param {String} s
# @return {Integer}
def title_to_number(s)
  alpha = ("A".."Z").to_a
  hash = Hash.new
  alpha.each_with_index { |el, idx| hash[el] = idx + 1 }

  col = 0

  (s.length-1).downto(0).each { |num| col += (alpha.length ** num) * (hash[s[s.length - num - 1]]) }

  col
end