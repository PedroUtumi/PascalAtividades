Program vetores;
uses CRT;

var
	vetor: array[1..20] of real;
	media: real;
	index: integer;
	
const
	FINAL_VETOR = 20;

Begin
	for index := 1 to FINAL_VETOR do
		begin
			write('posição ', index, ' do vetor: ');
			readln(vetor[index]);
			
			media := media + vetor[index];
		end;  
	media := media / FINAL_VETOR;
	writeln('Media dos números do array: ', media:2:2);
  
End.