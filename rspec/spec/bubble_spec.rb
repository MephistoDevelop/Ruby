require "../lib/bubble_sort.rb"

RSpec.describe Bubble do
  describe "test" do

    it "description" do
      bubble = Bubble.new
      expect(bubble.Bubble_sort([4,3,78,2,0,2])).to eql([1, 2, 2, 3, 4, 78])

    end

  end
end