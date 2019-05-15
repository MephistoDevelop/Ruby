require "../lib/enumerable.rb"

RSpec.describe Enumerable do

       describe "#my_each" do
        it "select elements that are major than 10" do
           expect([2,8,4,14,17,27].my_each{|x| x}).to eql([2,8,4,14,17,27])
        end
      end

        describe "#my_count" do
            it "counts elements of array" do
                expect([4,6,4,6,4,10].my_count).to eql(6)
            end
      end

        describe "#my_each_with_index" do
            it "search an items in array counting in  index" do
              expect([1,2,3,4,5,6].each{ |val,i| val}).to eql([1,2,3,4,5,6])
            end
        end

        describe "#my_select" do
          it "select elements by condition block " do
            expect([2,87,12,57,90,100].my_select{ |x| x%2==0}).to eql([2,12,90,100])
          end
      end

      describe "#my_all?" do
          it "obtain false if elements exist" do
              expect([2,8,9,3,1,27].all?{|x| x>9}).to eql(false)
          end
      end

      describe "#my_any?" do
          it "obtain true if elements exist in array" do
              expect([5,15,7,8,98].my_any?{|x| x==7}).to eql(true)
          end
      end


end