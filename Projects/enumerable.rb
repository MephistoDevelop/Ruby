module Enumerable

    def my_each
     for item in self do
        yield  item
    end
end


    def my_inject(codigo)


      end

    def multiply_els(array)
          return  Proc.new{ |item| puts item }
    end


end


arr=[2,8,2]
puts arr.Enumerable.my_each()
#puts arr.multiply_els(arr)