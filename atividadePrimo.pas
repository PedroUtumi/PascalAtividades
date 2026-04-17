Program atividadePrimo;
uses crt;
var
  numero, i: integer;
  isPrimo: boolean;

begin
  write('Digite o numero: ');
  readln(numero);

  if numero <= 2 then
    isPrimo := false
  else
  begin
    isPrimo := true;
    for i := 2 to numero - 1 do
    begin
      if numero mod i = 0 then
      begin
        isPrimo := false;
        break;
      end;
    end;
  end;

  writeln('O numero ', numero, ' eh primo?: ', isPrimo);
end.
