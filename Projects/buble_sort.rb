class Project
   attr_accessor :arr

   def initialize
      end

      public def Bubble_sort(arr);
      @arr = arr
         @new_arr=arr
         for i in 0..@arr.length-1 do
             for j in 0..@new_arr.length-1 do
              @item=@arr[i]
               @to_compare=@new_arr[j]
                 if  @item > @to_compare
                        @arr[i] = @to_compare
                        @new_arr[j]=@item
                 end # end of if statement
              end #end of first for
          end #end of the second for
          return @arr
    end #end del metodo "todo"
 end #end of class

 Arr=["hola","halo","hi",  "hello", "hey"]
 var = Project.new
 puts var.Bubble_sort(Arr)
