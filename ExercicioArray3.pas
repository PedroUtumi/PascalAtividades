Program notas;
uses CRT;

var
	nota: array[1..15] of real;
	media: real;
	contadorMaioresQueMedia, contadorMenoresQueMedia, index: integer;

const
	QUANTIDADE_NOTAS = 15;

Begin
	media := 0;
  contadorMaioresQueMedia := 0;
  
  for index := 1 to QUANTIDADE_NOTAS do
  	begin
  		write('posição ', index, ' do vetor nota: ');
			readln(nota[index]);
			media := media + nota[index];
  	end;
  	
  media := media / QUANTIDADE_NOTAS;
  
	for index := 1 to QUANTIDADE_NOTAS do
		begin
			if nota[index] > media then contadorMaioresQueMedia := contadorMaioresQueMedia + 1
			else contadorMenoresQueMedia := contadorMenoresQueMedia + 1;
		end;
		
	writeln('Media total: ', media:2:2);
	writeln('Quantas notas acima da media?: ', contadorMaioresQueMedia);
End.