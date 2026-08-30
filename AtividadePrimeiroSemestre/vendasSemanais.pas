Program vendasSemanais;
uses CRT;

const
	QUANTIDADE_DIAS = 5;
	DIAS_SEMANA: array[1..5] of string = ('SEG - Segunda-Feira', 'TER - Terça-Feira', 'QUA - Quarta-Feira', 'QUI - Quinta-Feira', 'SEX - Sexta-Feira');

var
	faturamento: array[1..QUANTIDADE_DIAS] of real;
	maiorFaturamento, menorFaturamento, mediaSemanal: real;
	contadorDiasAcimaMedia, index: integer;
	nomeDiaMaior, nomeDiaMenor: string;

Begin
	contadorDiasAcimaMedia := 0;
	menorFaturamento := 0; 
  maiorFaturamento := 0;
  mediaSemanal := 0;
  
	for index := 1 to QUANTIDADE_DIAS do
		begin
			write('Faturamento do dia ', DIAS_SEMANA[index],': ');
			readln(faturamento[index]);
			
			if faturamento[index] > maiorFaturamento then
				begin
					maiorFaturamento := faturamento[index];
					nomeDiaMaior := DIAS_SEMANA[index];
				end; 
			if faturamento[index] < menorFaturamento then
				begin
					menorFaturamento := faturamento[index];
					nomeDiaMenor := DIAS_SEMANA[index];
				end; 
			if index = 1 then
				begin
					maiorFaturamento := faturamento[index];
					menorFaturamento := faturamento[index];
					nomeDiaMaior := DIAS_SEMANA[index];
					nomeDiaMenor := DIAS_SEMANA[index];
				end;
				
			mediaSemanal := mediaSemanal + faturamento[index];
		end;
	
	mediaSemanal := mediaSemanal / QUANTIDADE_DIAS;
	
	for index := 1 to QUANTIDADE_DIAS do if faturamento[index] > mediaSemanal then contadorDiasAcimaMedia := contadorDiasAcimaMedia + 1;

	writeln('=========================================================================================');
	writeln('Maior faturamento: R$', maiorFaturamento:2:2, ' | Dia correspondente: ', nomeDiaMaior);
  writeln('Menor faturamento: R$', menorFaturamento:2:2, ' | Dia correspondente: ', nomeDiaMenor);
  writeln('Média semanal: R$', mediaSemanal:2:2);
  writeln('Contador de dias acima da média: ', contadorDiasAcimaMedia);
  writeln('=========================================================================================');
	
	readln;
End.