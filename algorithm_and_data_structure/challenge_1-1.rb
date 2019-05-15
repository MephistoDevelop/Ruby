class Node
  attr_accessor :val, :next

  def initialize(val, next_node)
      @val = val
      @next = next_node
  end
end

class LinkedList

  def add(val)
    if @head == nil
       @head = Node.new(val, nil)
     else
       current = @head
    while current.next != nil
      current = current.next
    end
    current.next = Node.new(val, nil)
    end
  end

  def delete(val)
    current.next = @head
    if current.val = val
      @head = current.next
    else
      while (current.next != nil) && (current.next.val != val)
        current = current.next
      end
      unless current.next == nil
        current.next = current.next.next
      end
    end
  end

  def get(index)
    elements = []
    current = @head
    while current.next != nil
      elements << current
      current = current.next
    end
    elements << current
   return elements[index].val
   # puts "#{elements[0].val.to_s}  :   #{elements[1].val.to_s}  :  #{elements[2].val.to_s}"
  end
end

list = LinkedList.new
list.add(3)
list.add(5)
 puts list.get(1)