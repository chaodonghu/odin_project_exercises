def bubble_sort(array)
  # get initial length of array
  n = array.length

  # keep looping until swapped = false
  loop do
    swapped = false

    (n - 1).times do |i|
      if array[i] > array[i+1]
        # swap the elements in place
        array[i], array[i + 1] = array[i + 1], array[i]
        swapped = true
      end
    end

    break if not swapped
  end

  array
end

bubble_sort_result = bubble_sort([4,3,78,2,0,2])

puts bubble_sort_result

def bubble_sort_by(array)
  n = array.length

  loop do
    sorted = false
    (n - 1).times do |i|
      if yield(array[i], array[i + 1]) > 0
         array[i], array[i + 1] = array[i+ 1], array[i]
         sorted = true
      end
    end

    break if not sorted
  end

  array
end

bubble_sort_by_result = bubble_sort_by(["hi","hello","hey"]) do |left,right|
  left.length - right.length
end

puts bubble_sort_by_result
