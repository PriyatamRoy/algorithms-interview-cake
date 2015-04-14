def merge_sort(arr)

  return [arr] if arr.length < 2

  mid_point = arr.length/2

  left = arr[0...mid_point]
  right = arr[mid_point..-1]

  merge(left, right)

end

def merge(left, right)
  result = []

  until left.empty? || right.empty?

    if left[-1] < right[-1]
      result << left.pop
    else
      result << right.pop
    end
  end
  result + left + right
end

print merge_sort([5, 6, 3, 2, 1])
