def sqrt(number)
  sqrt_recursive(number, 0, number)
end

def sqrt_recursive(number, min_interval, max_interval)

   aproximated = 1
   root=aproximated
   while(root * root <= number)
   root += aproximated
 end
 return root-1
end

puts sqrt(25)
puts sqrt(7056)
