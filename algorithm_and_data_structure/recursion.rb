def sum(number)
  @counter=number
  @suma=0
while @counter != 0 do
  @suma+= @counter
  @counter -= 1
end
return @suma
end

def sumrecursion(number)
if  number == 1
  1
else
   number += sumrecursion(number-1)
end
 return number
end


puts sum(4)
puts sum(10)

puts sumrecursion(4)
puts sumrecursion(10)