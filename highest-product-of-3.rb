#Directions:
#
#Given an array_of_ints, find the highest_product you can get from three of the integers.
#
# The input array_of_ints will always have at least three integers.

def highest_prod(arr)

  highest_prod_2 = (arr[0] * arr[1])
  highest = [arr[0], arr[1]].max
  lowest_prod_2 = (arr[0] * arr[1])
  lowest = [arr[0], arr[1]].min

  highest_prod_3 = (arr[0] * arr[1] * arr[2])

  i = 3
  while i < arr.length
    current_num = arr[i]

    highest_prod_3 = [(highest_prod_3), (highest_prod_2*current_num), (lowest_prod_2*current_num)].max

    highest_prod_2 = [highest_prod_2, (highest*current_num)].max

    lowest_prod_2 = [lowest_prod_2, (lowest*current_num)].min

    highest = [highest, current_num].max

    lowest = [lowest, current_num].min

    i += 1
  end

  highest_prod_3
end

array = [-10, -10, 1, 3, 2]
puts highest_prod(array)
