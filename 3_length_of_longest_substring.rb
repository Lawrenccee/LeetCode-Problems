def length_of_longest_substring(s)
    longest = 0
    first_seen = Hash.new(-1)
    first = 0
    last = 0

    while last < s.length && first < s.length
        sub = s[first..last]
        last_char = s[last]

        if first_seen[last_char] > -1
            first_seen[last_char] = last
            first_seen[s[first]] = -1
            first += 1
        else
            if sub.length > longest
                longest = sub.length
            end
            first_seen[last_char] = last
            last += 1
        end   
    end

    longest
end