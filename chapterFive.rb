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
  puts "original u: #{u} and v:#{v}"
  unless u==v
    until (u ==0) || (v==0)
      v = [u,v].min
      u = (u-v).abs

      puts "u: #{u} and v:#{v}"
    end
    puts "new u: #{u} and v:#{v}"
  end
  puts ""
end




gcd(6,16)
gcd(10,16)
gcd(4,16)
gcd(1,1)
gcd(16,10)
