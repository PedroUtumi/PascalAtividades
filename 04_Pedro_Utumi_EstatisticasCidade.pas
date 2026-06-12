Program estatisticaTransito;
uses CRT;

var
	listaCodigoCidades: array[1..5] of integer;
	repetido: boolean;
	i, codigoCidade, cidadePertencenteMaior, cidadePertencenteMenor, numVeiculosPasseio, numAcidentesComVitimas, index, cidadesMenos2000Veiculos: integer;
	indiceAcidentes, mediaVeiculos, mediaAcidentesCidadesMenos2000Veiculos, maiorIndice, menorIndice: real;

const
	NUMERO_CIDADES = 5;

Begin
	mediaVeiculos := 0;
	mediaAcidentesCidadesMenos2000Veiculos := 0;
	cidadesMenos2000Veiculos := 0;
	maiorIndice := 0;
	
	for index := 1 to NUMERO_CIDADES do
		begin
			writeln('Cidade ', index, ': ');
			repeat
				write('Qual o codigo da cidade?: ');
				readln(codigoCidade);
				repetido := false;
				for i := 1 to index - 1 do
					begin
						if listaCodigoCidades[i] = codigoCidade then
							begin
								writeln('cidade existente...');
								repetido := true;
							end;
					end;
			until not repetido;

			listaCodigoCidades[index] := codigoCidade;
			
			write('Quantos veículos estavam a passeio?: ');
			readln(numVeiculosPasseio);
				
			mediaVeiculos := mediaVeiculos + numVeiculosPasseio;
						
			write('Quantos acidentes resultaram em vítimas?: ');
			readln(numAcidentesComVitimas);
						
			if numVeiculosPasseio > 0 then indiceAcidentes := numAcidentesComVitimas / numVeiculosPasseio
			else indiceAcidentes := 0; 			
			
			if index = 1 then 
				begin
					menorIndice := indiceAcidentes;
					cidadePertencenteMenor := codigoCidade;		
				end;
			
			if indiceAcidentes > maiorIndice then 
				begin
					maiorIndice := indiceAcidentes;
					cidadePertencenteMaior := codigoCidade;
				end
			else if indiceAcidentes < menorIndice then
				begin 
					menorIndice := indiceAcidentes;
					cidadePertencenteMenor := codigoCidade;		
				end;	
						
			if numVeiculosPasseio < 2000 then 
				begin
					mediaAcidentesCidadesMenos2000Veiculos := mediaAcidentesCidadesMenos2000Veiculos + numAcidentesComVitimas;
					cidadesMenos2000Veiculos := cidadesMenos2000Veiculos + 1
				end;
		end;
	mediaVeiculos := mediaVeiculos / NUMERO_CIDADES;
	if cidadesMenos2000Veiculos > 0 then mediaAcidentesCidadesMenos2000Veiculos := mediaAcidentesCidadesMenos2000Veiculos / cidadesMenos2000Veiculos;
	writeln('Média de veículos nas cidades: ', mediaVeiculos:2:2);
	writeln('Média de acidentes nas cidades com menos de 2000 veículos: ', mediaAcidentesCidadesMenos2000Veiculos:2:2);
	writeln('Maior Indice e Cidade Pertencente: ', maiorIndice:2:2, ' | ' , cidadePertencenteMaior, ' || Menor Indice e Cidade Pertencente: ', menorIndice:2:2, ' | ' , cidadePertencenteMenor);
	readln;	  
End.