def bubble_sort(array)
  # get initial length of array
  n = array.length

  # keep looping until swapped = false
  loop do
    swapped = false

    (n-1).times do |i|
      if array[i] > array[i+1]
        # swap the elements in place
        array[i], array[i+1] = array[i+1], array[i]
        swapped = true
      end
    end

    break if not swapped
  end

  array
end
