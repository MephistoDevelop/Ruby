def Bubble_sort(arr);
arreglo=arr
   new_arr=arr
   for i in 0..arreglo.length-1 do
       for j in 0..new_arr.length-1 do
        item=arreglo[i]
         to_compare=new_arr[j]
           if  item < to_compare
                  arreglo[i] = to_compare
                  new_arr[j]=item
           end
        end
    end
    return arreglo.to_s
end

def Bubble_sort_by(arr)
last_check = arr.length-2
count = 0
for i in 0..last_check
    if (yield(arr[i], arr[i + 1])*-1) > 0
      arr[i], arr[i + 1] = arr[i + 1], arr[i]
      count += 1
    end
end
return arr.reverse.to_s
end

puts Bubble_sort([4,3,78,2,0,2])
# => [0, 2, 2, 3, 4, 78]
puts Bubble_sort_by(["hey", "hello", "hi"]) { |left,rigth| r=((left.length - rigth.length))   }
# =>  ["hi", "hey", "hello"]