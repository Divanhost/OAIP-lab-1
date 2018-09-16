function Factorial(n: integer): integer;
begin
  Result := 1;
  for var i:=2 to n do
    Result *= i;
end;

function Power(a: integer; n: integer): real;
begin
  Result := 1;
  for var i:=1 to n do
    Result *= a;
end;




var 
  a,b,c,k,m,n:integer;
  h:real =0.5;
  tmp:real :=0;
  x:real :=0;
  aFact,aMbfact,cMaMb:real;
  y: array[1..20] of real;
  d:array [1..5] of array [1..5] of real:=((1.0,-7.0,1.0,1.0,1.0),(1.0,5.0,1.0,1.0,1.0),(1.0,1.0,-12.7,1.0,1.0),(1.0,-8.0,-7.1,1.0,1.0),(1.0,-3.0,1.0,-9.0,1.0));
  t:array [1..6] of array [1..6] of real:=((3,4,-8.7,-9,-12,1),(-4,-23,-8.5,-1,-33,-4),(-7,-5,-9,-2.2,-1,0),(6,7,2,2,3,1.67),(1,12.12,-4,1,-1.9,1),(1,5,1,21,-4.4,11));
  l:array [1..7] of array [1..7] of real:= ((-1.5,6,-4.56,-8.9,5,7,12),(-5,-8.9,-0.62,8,6.5,2.3,-1),(-2.69,56,3.5,-2.69,-0.99,56,2),(2.56,9.96,0.25,6.98,-8.96,-7,-5.55),(35.2,13.2,-0.25,3.69,-2.35,-4.44,-6.65),(1,-1.5,-6.3,10,6,5.1,-5.1),(11,1.5,1.6,-1.8,-5.1,-8.1,1));
begin
  a:=0;
  b:=0;
  c:=0;
  k:=0;
  m:=0;
  n:=0;

	for var i:=1 to 5 do 
	  begin
	  for var j:=1 to 5 do 
	    begin
  			if(i+j>=4 ) then break;
  	    if (d[i][j] < 0) then begin
  	    k:=k+1;
  		  tmp += d[i][j];
			  end
		  end
	  end;
	a := round(Abs(tmp));
	tmp :=0;
	for var i:=1 to 6 do 
	  begin
	  for var j:=1 to 6 do 
	    begin
  			if(i+j>=5 ) then break;
  	    if (t[i][j] < 0) then begin
  	    m:=m+1;
  		  tmp += t[i][j];
			  end
		  end
	  end;
	b := round(Abs(tmp));
	tmp :=0;
	for var i:=1 to 7 do 
	  begin
	  for var j:=1 to 7 do 
	    begin
  			if(i+j>=6 ) then break;
  	    if (l[i][j] < 0) then begin
  	    n:=n+1;
  		  tmp += l[i][j];
			  end
		  end
	  end;
	c := round(Abs(tmp));
	aFact := Factorial(a);
	aMbfact := Factorial(Abs(a - b));
	cMaMb := Factorial(Abs(c - a - b));
	for var i:=1 to 20 do 
	  begin
	  y[i] := (2 * aFact*x + 2 * aMbfact*Power(x, m)) / (cMaMb*Power(x,n));
	  x:=x+h;
	  end;
	  
end.
