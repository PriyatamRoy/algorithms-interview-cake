# Write a method that takes an array and returns all its permutations. Time/memory complexity should be proportional to the number of permutations;
# what is this?

def permutations(arr)

  return [[]] if arr.empty?

  perms = []

  arr.length.times do |i|

    el = arr[i]
    rest = arr.take(i) + arr.drop(i+1)

    new_perms = permutations(rest).map {|perm| perm.unshift(el)}
    perms.concat(new_perms)
  end

  perms
end

print permutations([1, 2, 3])

# 1, 2, 3
#
#
# [[3]]
# [[2, 3]]
