=begin Challenge
In this challenge, you need to move 2 disks from any starting peg to any goal peg.

You will be given two numbers (from 1 to 3) as input - the starting  peg, and the goal peg. Write a function that calculates how to move 2  disks from the starting peg to the goal peg. Return a string with all the steps.

Output Format:

Add the peg to move from, an arrow "->", and the peg to move to.  For example, to move from peg 1 to peg 3, print "1->3".

Examples

move(1, 3)
# => 1->2 1->3 2->3

# =>       1->2            1->3            2->3
# => start->free start->goal  free->goal

move(2, 3)
# => 2->1 2->3 1->3
=end

def move(starting, goal)
  r=""
  count = 1

    for i in 0..goal-1 do
       r += "#{starting}->#{count} "
       count+=2
    end
    puts r
  end

puts move(1, 3)
# => 1->2 1->3 2->3

puts move(2, 3)
# => 2->1 2->3 1->3
