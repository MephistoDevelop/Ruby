require 'pry'
class Project
   attr_accessor :arr

   def initialize
      end

      public def Bubble_sort(arr);
      @arr=arr
         @new_arr=arr
         for i in 0..@arr.length-1 do
             for j in 0..@new_arr.length-1 do
              @item=@arr[i]
               @to_compare=@new_arr[j]
                 if  @item < @to_compare
                        @arr[i] = @to_compare
                        @new_arr[j]=@item
                 end # end of if statement
              end #end of first for
          end #end of the second for
          return @arr.to_s
    end #end del metodo "bubble_sort"

    def Bubble_sort_by(arr)
      last_check = arr.length-2
      count = 0
      for i in 0..last_check
        #puts "#{yield(arr[i], arr[i + 1])*-1} yield value : last_check = #{last_check} : i = #{i} "
          if (yield(arr[i], arr[i + 1])*-1) > 0
            arr[i], arr[i + 1] = arr[i + 1], arr[i]
            count += 1
          end
      end
  return arr.reverse.to_s
    end# end of method by
 end #end of class

 variable=Project.new
 puts variable.Bubble_sort([4,3,78,2,0,2])
 puts variable.Bubble_sort_by(["hey", "hello", "hi"]) { |left,rigth| r=((left.length - rigth.length))   }