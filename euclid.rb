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

#pascal
# program euclid(input.output);
# var x.y: integer;
# function gcd(u.v: integer):integer;
# 	var t: integer; 
# 	begin
# 	repeat
# 		if u<v then
# 			begin t:=u; u:=v; v:=t end;
# 		u:=u-v
# 	until u=0; 
# 	gcd:=v
# 	end;
# begin 
# while not eof do
# 	begin 
# 	readln(x.y);
# 	if (x>y) and (y>0) then writeln(x,y.gcd(x.y))
# 	end;
# end.	 