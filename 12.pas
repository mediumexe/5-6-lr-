program zad12;
var a:array[1..40] of integer;
i,j:integer;
begin
  randomize;
  for i:= 1 to 20 do
    a[i]:=random(100) - 50;
  j:= 20;
  for i:=20 downto 1 do
    begin
      if a[i]>0 then
      begin
        if a[i] > 0 then
        begin
          a[j]:=a[i];
          a[j-1]:=0;
          j:=j-2;
          end
          else
          begin
            a[j]:=a[i];
            j:=j - 1;
            end;
          end;
        end;
        writeln('Измененный масbd');
      for i:=1 to 40 do
        write(a[i],'  ');
      readln;
end.