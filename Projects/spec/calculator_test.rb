#spec/calculator_test.rb
RSpec.describe Calculator do
     describe "#add" do
       it "returns the of two numbers" do
           calculator = Calculator.new
           expect(calculator.add(5,2)).to eql(7)
       end
      end
    end
