program zad9;
var a:array[1..20] of integer;
i,c,d:integer;
begin
for i:=1 to 20 do
  a[i]:=random(100) - 50;
c:= -1;
for i:=1 to 20 do
begin
  if a[i] > 0 then
  begin
    c:=i;
    break;
    end;
  end;
  if c >-1 then
  begin
    for i:= c to 19 do
      a[i]:=a[i+1];
    a[20]:=0;
    end;
    d:=1;
    for i:= 2 to 20 do
    begin
      if a[i] < a[d] then
        d:=i;
      end;
      for i:= d to 19 do
      a[i]:=a[i+1];
      a[20]:=0;
      
        writeln('Измененный массив:');
      for i:= 1 to 20 do
        write(a[i], '  ');
      readln;
    end.
   