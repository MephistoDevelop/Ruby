require "../lib/enumerable.rb"

RSpec.describe Enumerable do
    describe "#my_each" do
        it "select elements that are major than 10" do
          puts "importada la wea"
puts "#{[2,8,4,14,17,27].my_each? { |x|  x >10} } esto es string"
         #  expect([2,8,4,14,17,27].my_each? { |x|  x >10}).to eql([14,17,27])
        end
    end
end