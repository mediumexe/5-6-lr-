program z7_lab5;
var
  F: array[1..100] of integer;
  n, i, a, b: Integer;
begin
for i := 1 to 10 do   
   F[i]:= Random(10) + 1;
writeln('Массив F:');
for i:= 1 to 10 do
write(f[i], ' ');
  a := 1;
  b := 1;
  for i := 2 to 10 do
  begin
    if F[i] >= F[i - 1] then
      b := b + 1
    else
    begin
      if b > a then
        a := b;
      
      b := 1;
    end;
  end;

  if b > a then
    a := b;
writeln;
  WriteLn('Максимальная длина неубывающего участка: ', a);
end.
