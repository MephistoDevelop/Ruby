require "../lib/enumerable.rb"

RSpec.describe Enumerable do
    describe "#my_each" do
        it "select elements that are major than 10" do
          puts "importada la wea"
           expect([2,8,4,14,17,27].my_each?{|x| x}).to eql([2,8,4,14,17,27])
        end
    end
end