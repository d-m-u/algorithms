# sieve of eratosthenes
# page 16
# for each i, a[i] true if prime
# for each i, setting array element corresponding to each multiple of i to false
# then loop through again, printing them out
def primes
  arr=Array.new
  arr[1]=false
  (2..1000).each {|i| arr[i]=true}
  (2..1000).each {|i| (i/2).floor
    (2..1000).each {|j| (j/i).floor
      arr[i*j] = false
  }}
  for i in 1..1000
    if arr[i] == true
      puts i
    end
  end
end

# 3.1
# fill in 2d array of bools by setting a[i,j] to true if gcd i,j is 1 and false otherwise
# uses ruby's built in gcd function
def twoDArray(m,n)
  arr = Hash.new
  for m in 0..m
    for n in 0..n
      if m.gcd(n) == 1
        arr[[m,n]] = true
      else
        arr[[m,n]] = false
      end
    end
  end

  for m in 0..m
    for n in 0..n
      if arr[[m,n]] == true
        puts "#{m} :m and #{n} :n"
      end
    end
  end
end

# 3.4
# solve the josephus problem with an array
# N people have decided to commit mass suicide by arranging themselves in a circle and killing the mth person around the circle,
# closing ranks as each person drops out of the circle. find out the order in which the people die

def josephus(n,m)
  arr = Array.new
  order = Array.new
  current=m
  count = 1
  for i in 1..n
    arr[i] = i
  end

  # pseudocode
  # starting at current person 5
  # if arr[current] is nil
  #    a var called count which keeps track of the 1-5 next people
  #    count doesn't increase
  # else it does but also the index can't go past m so double loop?
  # add the elements to order
  arr[current] = nil
  order << current

  #begin

  #end while (count < 5)

  puts "order: #{order.to_s}"
end


josephus(9,5)

# 3.5
# pseudocode for implementing insertion and deletion with a doubly linked list
# each node has two pointers - one to the element behind it, one to the element in front
# insertion
# if head points to nothing, set headBack to a and set aAhead to head
# else traverse list till at element immediately before a, set elementBack pointer to a, aAhead to elementBack, aBack to adjacentElement, and adjacentElementAhead to a

# deletion
# if head points to nothing, throw exception
# else traverse till at element to delete then set element before to point to element after and after to before and both the deleted's to null

# 3.10
# pseudocode for implementing basic operations of queue with linked list
# queue is FIFO
# basic queue operations: enqueue - add element to back of queue, dequeue - remove from front, peek (get element at front without removing it), is_full, is_empty
# HEAD -- E1 -- E2 -- E3 ... Ez -- Ez

# enqueue - if is_empty, add as first element
# if head points to null/ is_empty, set pointer to a
# if !empty and !full, traverse LL until Ex pointer points to null, set that pointer to a
# if full, I dunno, throw exception?

# dequeue - nothing if empty
# if is_empty throw exception
# else return E1, which HEAD is pointing at and set HEAD to point to E2
