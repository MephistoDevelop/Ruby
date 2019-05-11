#spec/calculator_spec.rb
require  './lib/calculator.rb'
RSpec.describe Calculator do
  describe "#add" do
    it "returns the sum of two numbers" do
      calculator = Calculator.new
      expect(calculator.add(5, 2)).to eql(7)
    end

    it "return de multiply of two numbers" do
      calculator = Calculator.new
      expect(calculator.multiply(5,5)).to eql(25)
    end

    it "return de substract of two numbers" do
    calculator =Calculator.new
    expect(calculator.substract(10,7)).to eql(3)
    end

    it "return de divide method from two numbers" do
     calculator = Calculator.new
     expect(calculator.divide(8,2,)).to eql (4)
    end
    end
end