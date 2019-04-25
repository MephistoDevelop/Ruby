class Node
  attr_accessor :val, :next

  def initialize(val, next_node)
      @val = val
      @next = next_node
  end
end


class LinkedList
  attr_accessor :top
 def initialize
  @top=nil

  def push(number )
    newnode= Node.new(number,number)
    @top=number

    end

  end
end

list = LinkedList.new
list.push(20)
puts @t