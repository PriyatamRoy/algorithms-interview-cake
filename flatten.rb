# create a flatten method

def flatten_arr(arr)
  return arr if arr.length == 1

  result = []

  arr.each do |el|
    if el.class == Array
      new_arr = flatten_arr(el)
      result.concat(new_arr)
    else
      result << el
    end
  end
  result
end

print flatten_arr([1, [3, 5, 6, [4, 5]], [5, 6]])
