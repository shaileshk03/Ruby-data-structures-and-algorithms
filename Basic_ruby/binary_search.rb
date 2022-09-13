# Ruby searching 

an_array = [1,2,3,4,5,6,7,8,9]

## Ex => 1
def binary_search(an_array, item)
    first = 0
    last = an_array.length - 1

    while first <= last
        i = (first + last) / 2
        if an_array[i] == item
            return "#{item} found at position #{i}"
        elsif an_array[i] > item
            last = i - 1
        else an_array[i] < item
            first = i + 1
        end
    end
    return "#{item} not found in this array"
end

puts binary_search(an_array, 5)

  