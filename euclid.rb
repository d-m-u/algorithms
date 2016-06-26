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
  if (x>1)
    toBinary(x/2) + (x%2).to_s
  elsif x==1
    return x.to_s
  end
end

#puts gcd(1073741823,1073741823)
# largest representable as int in ruby fixnum
# courtesy of SO
# http://stackoverflow.com/questions/535721/ruby-max-integer

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

#######################################

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

primes()
