# A crack team of love scientists from OkEros (a hot new dating site) have devised a way to represent dating profiles as rectangles on a two-dimensional plane.
# They need help writing an algorithm to find the intersection of two users' love rectangles. They suspect finding that intersection is the key to a matching algorithm so powerful it will cause an immediate acquisition by Google or Facebook or Obama or something.
#
# It must be love
# Write a function to find the rectangular intersection of two given love rectangles.
#
# Love rectangles are defined as hash maps ↴ like this:
#
#   my_rectangle = {
#
#     # coordinates of bottom-left corner:
#     'x': 1,
#     'y': 5,
#
#     # width and height
#     'width': 10,
#     'height': 4,
#
#     }
# Your output rectangle should use this format as well.

def rect_love(rect1, rect2)

  rect2_coord = [[rect2["x"], rect2["y"]],
                 [rect2["x"]+rect2["width"], rect2["y"]],
                 [rect2["x"], (rect2["y"] + rect2["height"])],
                 [rect2["x"]+rect2["width"], rect2["y"]+rect2["height"]]
                 ]

  x_intersect = nil
  y_intersect = nil
  rect2_coord.each do |sub_arr|
    if rect1["x"] < sub_arr[0] && (rect1["x"]+rect1["width"]) > sub_arr[0]
      x_intersect = sub_arr[0]
    end

    if rect1["y"] < sub_arr[1] && (rect1["y"]+rect1["height"]) > sub_arr[1]
      y_intersect = sub_arr[1]
    end
  end

  x_intersect.nil? && y_intersect.nil? ? nil : [x_intersect, y_intersect]
end

rectangle1 = {
      'x'=> 6,
      'y'=> 10,
      'width'=> 10,
      'height'=> 4,
      }

rectangle2 = {
      'x'=> 4,
      'y'=> 8,
      'width'=> 10,
      'height'=> 4,
      }

p rect_love(rectangle1, rectangle2)
