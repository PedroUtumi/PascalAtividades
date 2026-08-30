Program vetores;
uses CRT;

var
	vetor: array[1..10] of integer;
	maior, menor, index: integer;
	
const
	FINAL_VETOR = 10;

Begin
	maior := 0;
	menor := 0;
	
	for index := 1 to FINAL_VETOR do
		begin
			write('posição ', index, ' do vetor: ');
			readln(vetor[index]);
			
			if vetor[index] > maior then maior := vetor[index];
			if (vetor[index] < menor) or (index = 1) then menor := vetor[index];
		end;
	write('Maior valor: ', maior, ' | Menor valor: ', menor);
End.