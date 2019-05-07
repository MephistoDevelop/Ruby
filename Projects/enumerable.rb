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

      def my_any?
        flag=false
          self.my_each { |x|
          yield(x) ? flag=1 : false
        }
        puts flag==1 ? true : false
    end

    def my_none?
        flag=false
        self.my_each{ |item|  yield(item) ? flag=true :  false}
        puts flag==false ? true : false
    end

    def my_count
      count =0
      self.my_each{count +=1 }
      count
    end

    def my_map
      arr = []
      self.my_each{|item|  arr.push(yield(item)) }
      arr
    end

    def my_inject
     y=yield(10,6).to_s
     puts y
      #                           2      x= x+item
      self.my_each { |item|  x = yield(x,item)  }
      puts  x
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
#puts  arr.my_select{ |x| x%2==0}.to_s
#input array = [2,8,4,14,17,27]
# output =>[2, 8, 4, 14]

##########################################################################

 #puts "Method #4 - My_all?"
 #arr= [2,4,14,17,nil]
#arr.my_all?{ |x|  x==nil }  #my enumerable method
#puts arr.all?  #original Enumerable Method

##########################################################################

 #puts "Method #5 - My_any?"
 #arr= [2,4,14,17,nil]
 #arr.my_any?{|item| item == 17}
#puts arr.any?(17)

##########################################################################

#puts "Method #6 - My_none?"
#arr= [2,4,14,17,nil]
#arr.my_none?{ |x| x==nil  }
#puts arr.none?(nil)

##########################################################################

#puts "Method #7 - My_count?"
#arr= [2,4,14,17,nil]
#puts arr.my_count
#puts arr.count

##########################################################################


#puts "Method #8 - My_map"
#arr= [2,4,14,17,nil]
#puts arr.my_map{ |x| x.to_s+ "!" }.to_s
#puts arr.map{|x| x.to_s + "!" }.to_s

##########################################################################

puts "Method #9 - My_inject"
arr=[2,3,5,12,8,1]
 arr.my_inject{ |sum,x|  sum += x }
puts arr.inject { |sum,x| sum += x }

##########################################################################

#puts arr.multiply_els(arr)