# @param {String} s
# @return {String[][]}
def partition(s)
  temp = []
  res = []
  dfs(s, temp, res)
  res
end

def dfs(s, temp, res)
  if s.length == 0
    res.push(temp)
  end
  
  (0...s.length).each do |idx|
    if palindrome?(s[0..idx])
      temp.push(s[0..idx])
      dfs(s[(idx+1)..-1], temp.dup, res)
      temp.pop
    end
  end
end

def palindrome?(str)
  str == str.reverse
end
