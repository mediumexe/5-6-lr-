program z8_lab5;
const
  N = 10; 
var
  A: array [1..N] of integer; 
  B: array [1..N] of integer; 
  i, j, maxCount, mostFrequent: integer; 
begin
  for i := 1 to N do
    A[i] := Random(10) + 1;
  writeln('массив A:');
  for i := 1 to N do
    write(A[i], ' ');
  writeln;
  for i := 1 to N do
    B[i] := 0;
  for i := 1 to N do
  begin
    for j := 1 to N do
    begin
      if A[j] = A[i] then
        B[i] := B[i] + 1;
    end;
  end;
  maxCount := B[1];
  mostFrequent := A[1];
  for i := 2 to N do
  begin
    if B[i] > maxCount then
    begin
      maxCount := B[i];
      mostFrequent := A[i];
    end;
  end;
  writeln('число: ', mostFrequent, ', количество повторений: ', maxCount,'.');
end.
