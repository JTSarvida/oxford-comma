def oxford_comma(array)
    oxford_array = []
    if array.size == 1
        oxford_array = array.join
        return oxford_array
    elsif array.size == 2
        oxford_array = array.join(' and ')
        return oxford_array
    elsif array.size == 3
        oxford_array = array[0..1].join(', ')
        oxford_array << ", and #{array[2]}"
        return oxford_array
    elsif array.size > 3
        last_index = array.size-1
        oxford_array = array[0..last_index-1].join(', ')
        oxford_array << ", and #{array[last_index]}"
        return oxford_array
    end
    
end