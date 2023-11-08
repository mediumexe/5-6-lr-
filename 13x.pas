program z13_lab6;
var
  A: array[1..20] of Integer;
  i, minIndex, maxIndex, temp: Integer;

begin
 for i := 1 to 20 do
    A[i] := Random(10) + 1;
 writeln ('Массив A:');
 for i:=1 to 20 do
 write(A[i], ' ' );
  minIndex := 1;
  maxIndex := 1;
  for i := 2 to 20 do
  begin
    if A[i] < A[minIndex] then
      minIndex := i;

    if A[i] > A[maxIndex] then
      maxIndex := i;
  end;
  temp := A[minIndex];
  A[minIndex] := A[maxIndex];
  A[maxIndex] := temp;
writeln;
  Write('Массив с поменятыми наименьшим и наибольшим элементами:');
  writeln;
  for i := 1 to 20 do
    Write(A[i],' '  );

end.