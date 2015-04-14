# Write a function that will take a string and return the indices of the start/end of the longest palindrome it contains.
#
# Your palindrome checker could reverse the string and compare it to the original, but that takes extra memory (that takes O(n) extra memory). Instead, you should be able to solve the problem with O(1) memory.

def longest_palindrome(str)

  best_palindrome_start = 0

  best_palindrome_len = 0

  (0...str.length).each do |start|

    len = best_palindrome_len + 1

    while start + len <= str.length

      if str[start..(start+len-1)] == (str[start..(start+len-1)]).reverse
        best_palindrome_start, best_palindrome_len = start, len
      end

      len += 1
    end
  end

  [best_palindrome_start, best_palindrome_start + best_palindrome_len-1]

end

print longest_palindrome("helewtwelt")
