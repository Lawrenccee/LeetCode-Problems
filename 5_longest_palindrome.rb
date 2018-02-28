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