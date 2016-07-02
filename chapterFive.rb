# 5.9
# recursive Josephus implementation
# N people have decided to commit mass suicide by arranging themselves in a circle and killing the mth person around the circle,
# closing ranks as each person drops out of the circle. find out the order in which the people die

def josephus(n,m)

end


# 2.3
# reduction of fraction to lowest terms without recursion
# if u > v then gcd u,v == gcd v, u-v

def gcd (v,u)
  if(u>v)
    puts "original u: #{u} and v:#{v}"
    until (v >u) || (u==0) || (v==0)
      v=[u,v].min
      u=(u-v).abs
    end
    if(u<v)
      until (u==v) || (u==0) || (v==0)
        u=[u,v].min
        v=(u-v).abs
      end
      puts [u,v].max
    end
  end


end

gcd(6,16)
gcd(16,6)
gcd(6,66)