# @param {String} s
# @return {String}

# TIME LIMIT EXCEEDED
# def longest_palindrome(s)
#   longest = ""

#   (0...s.length).each do |idx1|
#     ((idx1)...s.length).each do |idx2|
#       sub = s[idx1..idx2]

#       if sub.reverse == sub
#         if sub.length > longest.length
#           longest = sub
#         end
#       end
#     end
#   end
  
#   longest
# end

# TIME LIMIT EXCEEDED
# def longest_palindrome(s)
#   longest = ""
#   start = 0
#   finish = 0

#   while start + longest.length < s.length
#     if finish == s.length
#       start += 1
#       finish = start + longest.length
#     end

#     sub = s[start..finish]

#     if sub.reverse == sub
#       longest = sub
#     end

#     finish += 1
#   end

#   longest
# end

# start with whole string if it is a palindrome then return
# otherwise decrease the end until you find the biggest substring in there

# or start from the beginning start making substrings until youve found the largest substring thats a palindrome
# move the window from the largest substring

# I feel like its better if you check if the whole thing is a substring first then if its not decrease the end and check
# agai if thats not a substring then keep decreasing until it is then when it is # move the starting pointer ahead by 1
# and check if its a substring and increase, basically you want to find the longest substring thats a palindrome with the 
# first character then using that length as a base extend till youve reached the end idk...
# if start plus longest.length > s.length is that when you stop?

# Dynamic Programming
# P(i,j) = true if si..sj is a palindrome
# P(i,j) = false otherwise
# P(i,j) = (P(i+1,j-1) AND Si == Sj)
# initialize 2D array P(i,i) set to true and S(i,i+1) = true if Si == Si+1

# TIME LIMIT EXCEEDED BUT O(n^2)???
def longest_palindrome(s)
  results = Array.new(s.length) { Array.new(s.length) }
  longest = [0, 0]

  s.each_char.with_index do |char, idx|
    results[idx][idx] = true
    if char == s[idx+1]
      results[idx][idx+1] = true
    end
  end

  (0...results.length).each do |idx1|
    (0...results[idx1].length).each do |idx2|
      if results[idx1][idx2] || (results[idx1-1] && results[idx1-1][idx2+1] && s[idx1] == s[idx2])
        results[idx1][idx2] = true 
      else 
        results[idx1][idx2] = false
      end 
    end
  end

  (results[0].length-1).downto(0).each do |idx1|
    (0...results[idx1].length).each do |idx2|
      if results[idx1][idx2] && s[idx2..idx1].length > (longest.last-longest.first)
        longest = [[idx1, idx2].min, [idx1, idx2].max]
      end
    end
  end

  return s[longest.first..longest.last]
end

# EXPANDING WINDOW SOLUTION ACCEPTED
def longest_palindrome(s)
  s.each_char.with_index do |char, idx|
    if_mid_len = palindrome_around_index(s, idx, idx)
    not_mid_len = palindrome_around_index(s, idx, idx + 1)
  end
end

private
def palindrome_around_index(s, left, right)
end

# HOW TO DO THREESUM
# LOOK AT ALL PAIRS AND THEIR COMPLEMENT

# public String longestPalindrome(String s) {
#     int start = 0, end = 0;
#     for (int i = 0; i < s.length(); i++) {
#         int len1 = expandAroundCenter(s, i, i);
#         int len2 = expandAroundCenter(s, i, i + 1);
#         int len = Math.max(len1, len2);
#         if (len > end - start) {
#             start = i - (len - 1) / 2;
#             end = i + len / 2;
#         }
#     }
#     return s.substring(start, end + 1);
# }

# private int expandAroundCenter(String s, int left, int right) {
#     int L = left, R = right;
#     while (L >= 0 && R < s.length() && s.charAt(L) == s.charAt(R)) {
#         L--;
#         R++;
#     }
#     return R - L - 1;
# }
p longest_palindrome("babad")
p longest_palindrome("abcda")