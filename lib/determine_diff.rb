# [6,3,5,4,3,4,4,5]
class DetermineDiff
  def self.diff(num_arr)
    diff_arr = []
    num_arr.each_cons(2) do |item1, item2|
      if item2 > item1
        diff_arr << :up
      elsif item2 < item1
        diff_arr << :down
      else
        diff_arr << :even
      end
    end

    diff_arr
  end

  def self.decline?(num_arr)
    difference_arr = num_arr.diff
  
  end
end
