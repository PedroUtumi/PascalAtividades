Program atividadeMortalidadeInfantil;

var
	quantidadeCriancasNascidas, contadorFemininasFalecidas, tempoVidaMeses, contadorMasculinosFalecidos, periodoMeses, contador, contadorFalecidas, contadorMenos2Anos: integer;
	sexo, estaFalecida: char;
	mediaCriancasMasculinas, mediaCriancasFemininas: real;

const
	MASCULINO = 'M';
	FEMININO = 'F';
	SIM = 'S';
	NAO = 'N';

Begin
  quantidadeCriancasNascidas := 0;
  contadorFemininasFalecidas := 0;
  tempoVidaMeses := 0;
  contadorMasculinosFalecidos := 0;
  periodoMeses := 0;
  contadorFalecidas := 0;
  contadorMenos2Anos := 0;
  contador := 1;
  
  sexo := ' ';
  estaFalecida := ' ';
  
  mediaCriancasMasculinas := 0.0;
  mediaCriancasFemininas := 0.0;
  
  write('Qual o periodo(em meses) da pesquisa?: ');
  readln(periodoMeses);
  
  write('Quantas criancas nasceram no periodo de ', periodoMeses, ' meses?: ');
  readln(quantidadeCriancasNascidas);
  
  repeat
    write('A criança infelizmente faleceu? (S/N): ');
    readln(estaFalecida);
    estaFalecida := UpCase(estaFalecida);
      
	  if estaFalecida = SIM then
	  	begin
	    	write('Quanto tempo essa criança viveu (em meses)? ');
	    	readln(tempoVidaMeses);
	    
	    	if tempoVidaMeses > periodoMeses then writeln('Essa morte ocorreu fora do período da pesquisa.')
	    	else
	    		begin
	      		contadorFalecidas := contadorFalecidas + 1;
	      
	      		write('Qual o sexo da criança (F/M)? ');
	      		readln(sexo);
	      		sexo := UpCase(sexo);
	        
	        	if sexo = MASCULINO then contadorMasculinosFalecidos := contadorMasculinosFalecidos + 1
	        	else if sexo = FEMININO then contadorFemininasFalecidas := contadorFemininasFalecidas + 1;
	        	if tempoVidaMeses < 24 then contadorMenos2Anos := contadorMenos2Anos + 1;
	      	end;
	    end
	 	else writeln('Ainda bem!');
	 	contador := contador + 1;  
	until contador > quantidadeCriancasNascidas;
  if contadorFalecidas > 0 then
  begin
    mediaCriancasMasculinas := (contadorMasculinosFalecidos / contadorFalecidas) * 100;
    mediaCriancasFemininas := (contadorFemininasFalecidas / contadorFalecidas) * 100;
    write('Quantas crianças tem?: ');
    writeln(quantidadeCriancasNascidas);
    
    write('Quantas crianças morreram no periodo?: ');
    writeln(contadorMasculinosFalecidos + contadorFemininasFalecidas);
    
    write('Quantas crianças masculinas morreram?: ');
    writeln(contadorMasculinosFalecidos);
    
    write('Porcentagem de crianças masculinas falecidas: ');
    writeln(mediaCriancasMasculinas:3:2, '%');
    
    write('Quantas crianças femininas morreram?: ');
    writeln(contadorFemininasFalecidas);
    
    write('Porcentagem de crianças femininas falecidas: ');
    writeln(mediaCriancasFemininas:3:2, '%');
    
    write('Quantas crianças viveram menos de dois anos(24 meses)?: ');
    writeln(contadorMenos2Anos);
  end
  else writeln('Ninguém faleceu!');
      
End.