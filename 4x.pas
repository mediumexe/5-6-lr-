program z4_lab5;
var A, B: array [1..30] of integer; i, j: integer;
begin
  for i := 1 to 30 do
    A[i]:= Random(167) - 99;
  j := 0;
  for i := 1 to 30 do
  begin
    if A[i] mod 2 = 0 then
    begin
      j := j + 1;
      B[j] := A[i];
    end;
  end;
  writeln('Массив А:');
  for i := 1 to 30 do
    write(A[i], ' ');
  writeln;
  
  writeln('Массив В:');
  for i := 1 to j do
    write(B[i], ' ');
  writeln;
end.