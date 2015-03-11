# You decide to test if your oddly-mathematical heating company is fulfilling its All-Time Max, Min, Mean and Mode Temperature Guarantee™.
# Write a class TempTracker with these methods:
#
# insert()—records a new temperature
# get_max()—returns the highest temp we've seen so far
# get_min()—returns the lowest temp we've seen so far
# get_mean()—returns the mean ↴ of all temps we've seen so far
# get_mode()—returns the mode ↴ of all temps we've seen so far
# Optimize for space and time. Favor speeding up the get_ functions over speeding up the insert() function.
#
# get_mean() should return a float, but the rest of the get_ functions can return integers. Temperatures will all be inserted as integers. We'll record our temperatures in Fahrenheit, so we can assume they'll all be in the range 0..110.
#
# If there is more than one mode, return any of the modes.

class Temperature

  def initialize
    @temperatures = {}
    @temp_max = 0
    @temp_min = 0
    @temp_sum = 0
    @temp_mode = 0
    @temp_array = [0]*111
    @max_occurances = 0
  end

  def insert(temp)
    # insert
    if @temperatures[temp]
      @temperatures[temp] += 1
    else
      @temperatures[temp] = 1
    end

    # max, min, mean
    @temp_max = temp if temp > @temp_max
    @temp_min = temp if temp < @temp_min
    @temp_sum += temp

    #mode
    @temp_array[temp] += 1
    if @temp_array[temp] > @max_occurances
      @temp_mode = temp
      @max_occurances = @temp_array[temp]
    end 
  end

  def get_min
    @temp_min
  end

  def get_max
    @temp_max
  end

  def get_mean
    @temp_sum*1.0/@temperatures.length
  end

  def get_mode
    @temp_mode
  end
end

temp = Temperature.new
temp.insert(35)
temp.insert(35)
temp.insert(35)
temp.insert(35)
temp.insert(67)
temp.insert(85)
temp.insert(85)
temp.insert(85)
temp.insert(85)
temp.insert(95)
temp.insert(73)
temp.insert(89)
temp.insert(82)
p temp.get_min
p temp.get_max
p temp.get_mean
p temp.get_mode
