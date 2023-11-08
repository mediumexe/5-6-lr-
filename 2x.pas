program z2_lab5;
const
  N = 20;
  MinRange = -52;
  MaxRange = 65;
var
  A: array [1..N] of integer;
  i, maxElem, maxElemIndex, minPosElem, minPosElemIndex: integer; 
  lastMultipleOf5, lastMultipleOf5Index: integer; 
begin
  for i := 1 to N do
    A[i] := Random(MaxRange - MinRange + 1) + MinRange;
  writeln('Исходный массив:');
  for i := 1 to N do
    write(A[i], ' ');
  writeln;
  maxElem := A[1];
  maxElemIndex := 1;
  for i := 2 to N do
  begin
    if A[i] > maxElem then
    begin
      maxElem := A[i];
      maxElemIndex := i;
    end;
  end;
  writeln('Наибольший элемент массива: ', maxElem, ', его номер: ', maxElemIndex);
  minPosElem := MaxRange + 1;
  minPosElemIndex := -1;
  for i := 1 to N do
  begin
    if (A[i]> 0) and (A[i] < minPosElem) then
    begin
      minPosElem := A[i];
      minPosElemIndex := i;
    end;
  end;
  if minPosElemIndex <> -1 then
    writeln('Наименьший положительный элемент массива: ', minPosElem, ', его номер: ', minPosElemIndex)
  else
    writeln('В массиве нет положительных элементов');
  lastMultipleOf5 := 0;
  lastMultipleOf5Index := -1;
  for i := N downto 1 do
  begin
    if A[i] mod 5 = 0 then
    begin
      lastMultipleOf5 := A[i];
      lastMultipleOf5Index := i;
      break;
    end;
  end;
  if lastMultipleOf5Index <> -1 then
    writeln('Номер последнего элемента массива, кратного 5: ', lastMultipleOf5Index)
  else
    writeln('В массиве нет элементов, кратных 5');
end.