Program atividade11;
uses CRT;

var
	codigoProduto: integer;

const
	CACHORRO_QUENTE = 100;	
	X_SALADA = 101;
	X_BACON = 102;
	REFRIGERANTE = 103;
	SUCO_NATURAL = 104;
	AGUA_MINERAL = 105;

function descobrirProduto(codProduto: integer): string;
begin
	case codProduto of
		CACHORRO_QUENTE: 
			descobrirProduto := 'Cachorro-quente';
		X_SALADA: 
			descobrirProduto := 'X-Salada';
		X_BACON: 
			descobrirProduto := 'X-Bacon';
		REFRIGERANTE: 
			descobrirProduto := 'Refrigerante';
		SUCO_NATURAL: 
			descobrirProduto := 'Suco Natural';
		AGUA_MINERAL: 
			descobrirProduto := 'Agua Mineral';
	else 
		descobrirProduto := 'Produto nao encontrado';
	end;
end;

function descobrirPreco(codProduto: integer): real;
begin
	case codProduto of
		CACHORRO_QUENTE: 
			descobrirPreco := 8.5;
		X_SALADA: 
			descobrirPreco := 10;
		X_BACON: 
			descobrirPreco := 12;
		REFRIGERANTE: 
			descobrirPreco := 5;
		SUCO_NATURAL: 
			descobrirPreco := 6;
		AGUA_MINERAL: 
			descobrirPreco := 3;
	else 
		descobrirPreco := 0;
	end;
end;

Begin
	write('Digite o codigo do produto: ');
	readln(codigoProduto);

	writeln('Produto: ', descobrirProduto(codigoProduto), ' Preco: ', descobrirPreco(codigoProduto):4:2);
End.