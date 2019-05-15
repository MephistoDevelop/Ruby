$VERBOSE = nil    # We'll explain this at the end of the lesson.
require 'prime'   # This is a module. We'll cover these soon!
def first_n_primes(n)

 return "n must be an integer." unless (n.is_a? Integer)

 return "n must be greater than 0." if n <= 0

     return  prime_array = [] if  (prime_array.nil?)

  prime = Prime.new
    n.times { prime_array.push(prime.next) }

  return prime_array
end

first_n_primes(10)