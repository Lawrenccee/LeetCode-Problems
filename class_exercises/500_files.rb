# put 500 of the things into a min heap
# keep track of which file it came from
# extract then push onto the heap
# O(nlogk) k is number of files n is total number of lines
# arr is an array of file names?

def five_hundred_files(arr)
  # initialize
  result = []
  min_heap = BinaryMinHeap.new { |el1, el2| el1.first <=> el2.first }
  arr = arr.map { |filename| File.new(filename).readlines }
  arr.each_with_index { |el, idx| min_heap.push([el.shift.chomp.to_i, idx]) }

  until min_heap.store.empty?
    min = min_heap.extract
    min_heap << min.first

    unless arr[min].empty?
      min_heap.push([arr[min].shift.chomp.to_i, min])
    end
  end

  result
end

# How about putting all of the files into the array, 
# then just doing a readline from each of them when you push it in with the index
# change unless to check if there are anymore lines to read
# store 3 things instead, date, which array index its in, then index of line like line 1, 2, 3
