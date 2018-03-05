# @param {Integer[]} a
# @param {Integer[]} b
# @param {Integer[]} c
# @param {Integer[]} d
# @return {Integer}
def four_sum_count(a, b, c, d)
  count = 0
  sums = Hash.new(0)
  
  a.each do |num_a|
    b.each do |num_b|
      sums[-(num_a + num_b)] += 1
    end
  end
  
  c.each do |num_c|
    d.each do |num_d|
      if sums[num_c + num_d]
        count += sums[num_c + num_d]
      end
    end
  end
  
  count
end

# Count the duplicates of the first two summed together. Check how many times the other pairs of numbers matches those and
# add that to the count