# 5.9
# recursive Josephus implementation
# N people have decided to commit mass suicide by arranging themselves in a circle and killing the mth person around the circle,
# closing ranks as each person drops out of the circle. find out the order in which the people die

def josephus(n,m)

#base case
N==1
#everything else calls
#but I don't know how to keep the placeholder that the original n was in
n=n-1
josephus(n,m)

end


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