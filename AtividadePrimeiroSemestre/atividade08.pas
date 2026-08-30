Program atividade08;
uses CRT;

// ALUNO: PEDRO FELIPE ONOFRE UTUMI
// ALGORITMOS E ESTRUTURA DE DADOS I

var
    salario, novoSalario, bonificacao, auxilio: real;

Begin
    write('Digite seu salario: ');
    readln(salario);
    
    if salario < 500 then
	    begin
	        bonificacao := salario * 0.05;
	        auxilio := 1500;
	    end
    else if (salario >= 500) and (salario < 1200) then
	    begin
	        bonificacao := salario * 0.12;
	        
	        if salario < 600 then
	            auxilio := 500
	        else
	            auxilio := 100;
	    end
    else
	    begin
	        bonificacao := 0;
	        auxilio := 100;
    	end;

    novoSalario := salario + bonificacao + auxilio;
    writeln('novo salario: ', novoSalario:4:2);

End.