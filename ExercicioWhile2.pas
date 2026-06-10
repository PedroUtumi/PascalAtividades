Program Pzim ;

var
	senhas, quantidadePessoas: integer;

Begin
	write('Quantas pessoas serão atendidas?: ');
	readln(quantidadePessoas);	
	senhas := 1;
	while senhas <= quantidadePessoas do
		begin
			writeln('Senha: ', senhas);
			senhas := senhas + 1;
		end;
	writeln('Todas as pessoas foram atendidas!');
End.