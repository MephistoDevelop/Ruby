#spec/bubble_test.rb

RSpec.describe Bubble  do
  describe "#add" do
    it "returns the sum of two numbers" do
     bubble =bubble_sort.new
      expect(bubble.Bubble_sort(5)).to eql(7)
    end
  end
end
