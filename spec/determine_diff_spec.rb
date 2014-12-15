require_relative "../lib/determine_diff"

describe "determine diff" do
  describe "describes if higher, lower or even to previous number in array" do
    it "return array length should be one less than array" do
      num_arr = [4,5]

      diff_arr = DetermineDiff.diff(num_arr)

      expect(diff_arr.length).to eq 1
    end

    it "how direction from previous index" do
      num_arr = [4,5]

      diff_arr = DetermineDiff.diff(num_arr)

      expect(diff_arr).to eq([:up])
    end

    it "how direction from previous index" do
      num_arr = [6,3,5,4,3,4,4,5]

      diff_arr = DetermineDiff.diff(num_arr)

      expect(diff_arr).to eq([:down,:up,:down,:down,:up,:even,:up])
    end
  end


  describe "in decline" do
    it "student has 3 grades that show :down" do
      num_arr = [6,3,5,4,3,4,4,5]

      expect(DetermineDiff.decline?(num_arr)).to be true
    end
  end
end
