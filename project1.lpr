program project1;

{$mode objfpc}{$H+}

uses
  Sysutils, math;

begin
  if paramstr(2) = '+' then
  begin
    try
      write(strtoint(paramstr(1)) + strtoint(paramstr(3)));
    except
      write(floattostr(strtofloat(paramstr(1)) + strtofloat(paramstr(3))));
    end;
  end;
  if paramstr(2) = '-' then
  begin
    try
      write(strtoint(paramstr(1)) - strtoint(paramstr(3)));
    except
      write(floattostr(strtofloat(paramstr(1)) - strtofloat(paramstr(3))));
    end;
  end;
  if paramstr(2) = '*' then
  begin
    try
      write(strtoint(paramstr(1)) * strtoint(paramstr(3)));
    except
      write(floattostr(strtofloat(paramstr(1)) * strtofloat(paramstr(3))));
    end;
  end;
  if paramstr(2) = '/' then
  begin
    try
      write(floattostr(strtoint(paramstr(1)) / strtoint(paramstr(3))));
    except
      write(floattostr(strtofloat(paramstr(1)) / strtofloat(paramstr(3))));
    end;
  end;
  if paramstr(2) = 'power' then
  begin
    try
      write(floattostr(power(strtoint(paramstr(1)), strtoint(paramstr(3)))));
    except
      write(floattostr(power(strtofloat(paramstr(1)), strtofloat(paramstr(3)))));
    end;
  end;
  if paramstr(2) = 'root' then
  begin
    try
      write(floattostr(power(strtoint(paramstr(1)), 1 / strtoint(paramstr(3)))));
    except
      write(floattostr(power(strtofloat(paramstr(1)), 1 / strtofloat(paramstr(3)))));
    end;
  end;
  if paramstr(2) = 'div' then
  begin
    try
      write(inttostr(strtoint(paramstr(1)) div strtoint(paramstr(3))) + ' : ' + inttostr(strtoint(paramstr(1)) mod strtoint(paramstr(3))));
    except
      write('error');
    end;
  end;
  if paramstr(2) = 'or' then
  begin
    try
      write(strtoint(paramstr(1)) or strtoint(paramstr(3)));
    except
      write('error');
    end;
  end;
  if paramstr(2) = 'xor' then
  begin
    try
      write(strtoint(paramstr(1)) xor strtoint(paramstr(3)));
    except
      write('error');
    end;
  end;
  if paramstr(2) = 'and' then
  begin
    try
      write(strtoint(paramstr(1)) and strtoint(paramstr(3)));
    except
      write('error');
    end;
  end;
end.

