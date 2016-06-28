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
