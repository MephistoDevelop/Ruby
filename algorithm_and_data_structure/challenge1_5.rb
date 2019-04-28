class Stack
  $arr=[]

  def push(number)
    $arr.push number
  end

  def pop
    # your code here
    $arr.pop
  end

  def min

   #puts $arr.join(',')
    @value=$arr.min
  end

end

stack = Stack.new
stack.push(5)
puts stack.min
# => 3
stack.push(3)
puts stack.min

stack.pop
stack.push(7)
puts stack.min
# => 3
stack.push(2)
puts stack.min
# => 2
stack.pop
puts stack.min

# => 3