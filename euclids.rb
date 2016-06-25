# if u > v then gcd u,v == gcd v, u-v

def gcd (v,u)
  if (u==v)
    return v
  elsif (u>v)
    u -=v
    gcd(v,u)
  else
  	gcd(u,v)
  end
end


puts "21,333 is #{gcd(21,333)}" 
puts "3,3 is #{gcd(9,3)}" 
puts "4,3 is #{gcd(4,3)}" 
puts "9,33 is #{gcd(9,33)}" 
puts "8,4 is #{gcd(8,4)}" 
puts "4,8 is #{gcd(4,8)}" 
puts "10,100 is #{gcd(10,100)}" 
puts "8,12 is #{gcd(8,12)}"
puts "20,5 is #{gcd(20,5)}"
puts "18,9 is #{gcd(18,9)}"   