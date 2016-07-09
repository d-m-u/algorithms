# 2.1
# pascal implementation of euclid
# program euclid(input.output);
# var x.y: integer;
# function gcd(u.v: integer):integer;
#   var t: integer;
#   begin
#   repeat
#     if u<v then
#       begin t:=u; u:=v; v:=t end;
#     u:=u-v
#   until u=0;
#   gcd:=v
#   end;
# begin
# while not eof do
#   begin
#   readln(x.y);
#   if (x>y) and (y>0) then writeln(x,y.gcd(x.y))
#   end;
# end.

# 2.3
# reduction of fraction to lowest terms recursively
# if u > v then gcd u,v == gcd v, u-v
def gcd (v,u)
  if (u==v)
    return v
  elsif (u>v)
    u-=v
    gcd(v,u)
  else
    gcd(u,v)
  end
end

# 2.5
# conversion from base ten to binary
def toBinary (x)
  if (x>1)
    toBinary(x/2) + (x%2).to_s
  elsif x==1
    return x.to_s
  end
end

# 2.8
# gcd of three ints, calling 2.3
def gcd3 (v,u,w)
  if (u==v)
    return gcd(v,w)
  elsif (u>v)
    u-=v
    gcd(gcd(v,u),w)
  else
    gcd(gcd(u,v),w)
  end
end

# 2.9
# largest representable as int in ruby fixnum
# courtesy of SO
# http://stackoverflow.com/questions/535721/ruby-max-integer
# puts gcd(1073741823,1073741823)

###########################
===========================
###########################

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

  for i in 1..n
    arr[i] = i
  end

  arr.compact!

  for i in 0..n-1
    arr= arr.rotate(m-1)
    order << arr[0]
    arr[0] = nil
    arr.compact!
  end

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

# 3.7
# E
# E A
# E A S
# E A           S
# E A Y         
# E             A Y
# E Q
# E Q U
# E Q U E 
# E             Q U E
# E S T
#               E S T
# I 
#               I
# O N           O N

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

###########################
===========================
###########################

# 4.1 
# preorder, inorder, postorder, level tree traversal of tree in 4.3 
# pre -- root, left sub, right sub
# E O A C P M L T E T E T E
# in --  left, root, right
# A C O M P L E T E T R E E
# post -- left, right, root
# A C M L P O T E R E E T E
# level -- top to bottom, left to right
# E O T P E E A C M L T R E

# 4.2 
# height of a complete 4-way tree with N nodes
# height of full binary tree with N internal nodes is about log_2 N

# 4.3 
# draw a parse tree for (A+B)*C+(D+E)

###########################
===========================
###########################

require 'benchmark'

# 5.9
# recursive Josephus implementation
# N people have decided to commit mass suicide by arranging themselves in a circle and killing the mth person around the circle,
# closing ranks as each person drops out of the circle. find out the order in which the people die

def josephus(n,m)

  while n.size>0
    puts n.rotate!(m-1).shift(1)
    josephus(n,m)
  end
end

#josephus([1,2,3,4,5,6,7,8,9],5)

#nonrecursive but still beautiful
def factorial(n)
  (1..n).inject(1) {|product, n| product * n }
end

#puts factorial(4)

def recursiveFactorial(n)
  if n==1
    return n
  else
    n *= recursiveFactorial(n-1)
  end
end

#puts recursiveFactorial(4)

def fibonacci(n)
  if n<=1
    return 1
  else
    n = (fibonacci(n-1) + fibonacci(n-2))
  end
end

def fibonacciWithInject(n)

end


#because it makes no sense to make a recursive fibonacci call ...
def nonRecursiveFibonacci(n)
a=Array.new
a[0] = a[1] = 1

for i in 2..n
a[i]=a[i-1] + a[i-2]
end
return a[n]
end


# puts Benchmark.measure { 100000.times { nonRecursiveFibonacci(17) } }
# puts Benchmark.measure { 100000.times { fibonacci(17) } }

# 6000 times
#  0.020000   0.000000   0.020000 (  0.024468)
#  2.000000   0.010000   2.010000 (  2.022804)
# 10000 times
#  0.030000   0.000000   0.030000 (  0.034869)
#  3.430000   0.020000   3.450000 (  3.476765)
# 100000
#  0.270000   0.000000   0.270000 (  0.283190)
# 33.300000   0.130000  33.430000 ( 33.650293)

# user CPU time, system CPU time, sum of user and system CPU times, elapsed real time

# 2.3
# reduction of fraction to lowest terms without recursion
# if u > v then gcd u,v == gcd v, u-v

def gcd (v,u)
  if(u<v)
    u,v=v,u
  end

  until (v >u) || (u==0) || (v==0)
    v=[u,v].min
    u=(u-v).abs
  end
  if(u<v)
    until (u==v) || (u==0) || (v==0)
      u=[u,v].min
      v=(u-v).abs
    end
  end

  puts [u,v].max
end

# 5.8
def approx(x,y,w,z)
  if(x-w).abs >1 && (y-z).abs >1
    puts "calling next with these: #{x} #{y} #{(((x-w).abs)/2.floor)+x} #{((y-z).abs/2.floor)+y}"
    approx(x,y, (((x-w).abs)/2.floor)+x, ((y-z).abs/2.floor)+y)
        end

        end

        #puts approx(1,2,5,8)