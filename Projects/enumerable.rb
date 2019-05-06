module Enumerable

    def self.my_each(arr)
     count=0
        while (count<=arr.length) do

            if( count == arr.length)
                break;
            else
            puts arr[count]
            end
            count+=1
        end

    end
end


arr=["diego","marihuano","y","q",5,9,12,6]
Enumerable.my_each(arr)