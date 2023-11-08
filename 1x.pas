program z1_lab5;
var f: array [1..20] of integer;
i: integer;
begin
  for i:=1 to 20 do begin
    write ('f [', i, ']= ');
    read (f[i]);
    end;
    for i:=1 to 20 do begin
      if f[i] > 0 then 
        f[i]:=0;
      if f[i] < 0 then 
        f[i]:=f[i]*f[i];
    end;
    writeln ('Массив a');
    for i:=1 to 20 do 
      write(f[i]:4);
end.