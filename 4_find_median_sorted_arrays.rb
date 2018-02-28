# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Float}
def find_median_sorted_arrays(nums1, nums2)
    merged = []
    
    until nums1.empty? || nums2.empty?
        case nums1.first <=> nums2.first
            when -1
                merged << nums1.shift
            when 0
                merged << nums1.shift
            when 1
                merged << nums2.shift
        end
    end
    
    merged += nums1 + nums2
    
    mid = merged.length/2

    if merged.length.odd?
        return merged[mid].to_f
    else
        return (merged[mid-1] + merged[mid]).to_f / 2
    end
end

# both numbers if arr length is even can be in the first array or both in the second array
# keep a pointer