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

   def my_all? &block
    self.my_each do |x|
        return false if yield(x) == false
    end

    true
end

    def my_any?
      flag=false
        self.my_each { |x|   yield(x)  ?  flag=1 : false      }
      return flag==1 ? true : false
  end

  def my_none?
      flag=false
      self.my_each{ |item|  yield(item) ? flag=true :  false}
      puts flag==false ? true : false
  end

  def my_count
    i = 0
    count = 0
    while i < self.length
      if block_given?
        if yield self[i]
          count = count + 1
        end
      else
        count = count + 1
      end
      i = i + 1
    end
    count
end

  def my_map(procs=nil)
     arr = []
        if procs && block_given?
            self.my_each {|i| arr << procs.call(yield(i))}
         elsif block_given?
            self.my_each {|i| arr << yield(i) }
         else
       self.my_each {|i| arr << procs.call(i) }
        end
     arr
  end

  def my_inject
     flag=false
      x=1
       #                           2      x= x+item
       self.my_each { |item|
       #   puts "esto es x : #{item}"
        if flag==false
           x=item
           flag=true
         else
         x = yield(x,item)
         end      }
     puts x
 end

  def multiply_els(array)
   puts array.my_inject{ |num,x|  num *= x }
  end

end

##########################################################################

#puts "Method #1 - My_each "
#puts arr.my_each{ |item| item}.to_s

##########################################################################

#puts "Method #2 - My_each_with_index "
#My_each_function wth index
#arr.my_each_with_index{ |val,i| puts "Value :#{val} is on the position: #{i} "}

##########################################################################

#puts  arr.my_select{ |x| x%2==0}.to_s
#input array = [2,8,4,14,17,27]
# output =>[2, 8, 4, 14]

##########################################################################

puts "Method #4 - My_all?"
arr= [2,4,14,17]
puts arr.my_all?{ |x|  x> 10 }  #my enumerable method
puts arr.all?  #original Enumerable Method

##########################################################################

#puts "Method #5 - My_any?"
#arr= [2,4,14,17,nil]
#puts  arr.my_any?{|item| item == 17}
#puts arr.any?(17)

##########################################################################

#puts "Method #6 - My_none?"
#arr= [2,4,14,17,nil]
#arr.my_none?{ |x| x==nil  }
#puts arr.none?(nil)

##########################################################################

#puts "Method #7 - My_count?"
#arr= [2,4,14,17]
#puts arr.my_count
#puts arr.my_count{|i|  i > 3 }
#puts arr.count

##########################################################################

#puts "Method #8 - My_map"
#arr= [2,4,14,17,nil]
#puts arr.my_map{ |x| x.to_s+ "!" }.to_s
#puts arr.map{|x| x.to_s + "!" }.to_s####

######################################################################

#puts "Method #9 - My_inject"
#arr=[2,3,5,12,8,1]
#arr.my_inject{ |sum,x|  sum += x }
#puts arr.inject { |sum,x| sum+= x }

##########################################################################

#puts "Method #10 - Multiply_els"
#arr=[2,4,5]
#puts arr.multiply_els(arr)
# => 40

##########################################################################

#puts "Method #11- Map with Proc"
#arr=[2,3,5,12,8,1]
#puts arr.my_map(&(Proc.new  {|x | x ** 2 }))

##########################################################################
