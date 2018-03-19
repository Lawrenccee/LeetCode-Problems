# @param {Integer} n
# @return {String[]}
def generate_parenthesis(n)
  result = []
  
  result = generate("", 0, 0, n, result)
end

def generate(string, left, right, n, result)
  if string.length == 2*n
    result << string
  end
  if left < n
    generate(string + "(", left+1, right, n, result)
  end
  if right < left
    generate(string + ")", left, right+1, n, result)
  end
    
  result
end