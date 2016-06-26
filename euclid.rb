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

def toBinary (x)
  while x>0 
    toBinary(x/2) + (x%2).to_s 
  end
end 

puts gcd(1073741823,1073741824) 
# largest representable as int in ruby fixnum
# courtesy of SO 
# http://stackoverflow.com/questions/535721/ruby-max-integer
puts toBinary(3)

  #pascal
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
