program z5_lab5;
const
  N = 10;
var A, B: array [1..N] of integer; sa, sb, i: integer;
begin
  for i := 1 to N do
  begin
    A[i] := Random(21) - 10;
    B[i] := Random(21) - 10;
  end;
  writeln('Массив A:');
  for i := 1 to N do
    write(A[i], ' ');
  writeln;
writeln;
  writeln('Массив B:');
  for i := 1 to N do
    write(B[i], ' ');
  writeln;
  sa := 0;
  sb := 0;
  for i := 1 to N do
  begin
    if A[i] > 0 then
      sa := sa + A[i];
    if B[i] > 0 then
      sb := sb + B[i];
  end;
  writeln;
  if sa < sb then
  begin
    writeln('Умножаем элементы массива A на 10 ');
    for i := 1 to N do
      A[i] := A[i] * 10;
  end
  else
  begin
    writeln('Умножаем элементы массива B на 10');
    for i := 1 to N do
      B[i] := B[i] * 10;
  end;
  writeln;
  writeln('Массив A:');
  for i := 1 to N do
    write(A[i], ' ');
  writeln;
  writeln;
  writeln('Массив B:');
  for i := 1 to N do
    write(B[i], ' ');
  writeln;
end.