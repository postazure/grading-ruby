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

  def self.decline?(grade_arr)
    down_count = 0

    grade_arr.each do |grade|
      if grade == :down
        down_count += 1
      elsif grade == :up
        down_count = 0
      end
    end
    down_count >= 3
  end
end
