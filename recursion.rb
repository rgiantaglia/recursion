def fibs(num)
    arr = [0, 1]
    i = 2
    while i < num
        arr[i] = arr[i-1] + arr[i-2]
        i += 1
    end
    p arr
end

fibs(8)

def fibs_rec(num)
    return arr = [0, 1] if num == 2
    arr = fibs_rec(num-1)
    arr << arr[-2] + arr[-1]
end

p fibs_rec(8)


def merge_sort(arr)
    n = arr.length
    if n < 2
        return arr
    else
        left_side = arr[0..(n-1)/2]
        right_side = arr[n/2..-1]
        left = merge_sort(left_side)
        right = merge_sort(right_side)

        merge(left,right)
    
    end
   
end

def merge(left,right,merged=[])
    until left.empty? && right.empty?
        # if one side is empty, the other side is considered to be already sorted
        # Returning the current holding array with the pre-sorted side decreases iterations
        if left.empty?
          return merged + right
        elsif right.empty?
          return merged + left
        else
          # Compare the first elements from both halves
          # push the lower of the two into the holding array
          left[0] < right[0] ? merged << left.shift : merged << right.shift
        end
      end
      merged
end

p merge_sort([4, 172, 25, 2, 3, 1, 3, 13])