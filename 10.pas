program zad10;
var a:array[1..20] of integer;
i,j:integer;
begin
  randomize;
  for i:= 1 to 20 do
    a[i]:= random(100) - 50;
  j:=1;
  for i:= 1 to 20 do
  begin
    if a[i]>=0 then
    begin
      a[j]:= a[i];
      j:=j + 1;
    end;
  end;
  for i:= j to 20 do
    a[i]:=0;
  for i:= 1 to 20 do
    write(a[i], '  ');
  readln;
end.