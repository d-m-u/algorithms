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
