# @param {Integer} n
# @return {String[]}
def generate_parenthesis(n)
  # parenthesis can either be ()string, string() or wrap around current string (string)
  
  result = [""]

  n.times do
    arr = []
    result.each do |str|
      arr << "#{str}()"
      arr << "()#{str}"
      arr << "(#{str})"
    end

    result = arr
  end

  result.uniq
end