def scale_image(array)
  results = []
  i = 0

  while i < array.length
    width, height  = array[i], array[i+1]

    width > height ? ratio = width/200.0 : ratio = height/200.0

    results << (width/ratio).round(0)
    results << (height/ratio).round(0)

    i += 2
  end
  results
end


print scale_image([400, 200])
