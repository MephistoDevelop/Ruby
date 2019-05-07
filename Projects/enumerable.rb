module Enumerable

    def my_each
     for item in self do
        yield( item)
        end
       end


       def my_each_with_index
            self.length.times{ |i|   yield(self[i],i) }
        end

        def my_select
            arr=[]
          self.my_each{ |i| yield(i) ? arr.push(i) : i }
           arr
        end

        def my_all?
       flag = 0
       self.my_each{ |x|
        yield(x) ? flag=1 : r=true}
puts  flag==1 ? false : true
        end

    def my_inject(codigo)
      end

    def multiply_els(array)
          return  Proc.new{ |item| puts item }
    end


end


arr=[2,8,4,14,17,27]
# my_each function
puts "Assigment 2 - Ruby Section"
##########################################################################

#puts "Method #1 - My_each "
#puts arr.my_each{ |item| item}.to_s

##########################################################################

#puts "Method #2 - My_each_with_index "
#My_each_function wth index
 #arr.my_each_with_index{ |val,i| puts "Value :#{val} is on the position: #{i} "}

##########################################################################

 #puts "Method #3 - My_select"
puts  arr.my_select{ |x| x%2==0}.to_s
#input array = [2,8,4,14,17,27]
# output =>[2, 8, 4, 14]

##########################################################################

 #puts "Method #4 - My_all?"
 arr= [2,4,14,17,nil]
arr.my_all?{ |x|  x==nil }  #my enumerable method
puts arr.all?  #original Enumerable Method

##########################################################################


#puts arr.multiply_els(arr)