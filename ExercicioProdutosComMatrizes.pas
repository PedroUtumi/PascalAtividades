Program ControleEstoqueProdutos;

const 
	QUANTIDADE_PRODUTOS = 10;
	QUANTIDADE_COLUNAS = 4;
	COLUNA_CODIGO = 1;
	COLUNA_QUANTIDADE = 2;
	COLUNA_PRECO = 3;
	COLUNA_FATURAMENTO = 4;
	
var
	matrizDadosProdutos: array[1..QUANTIDADE_PRODUTOS, 1..QUANTIDADE_COLUNAS] of real;
	i, j, produtosAcimaMedia: integer;
	faturamentoTotal, codigoProdutoMenorFaturamento, codigoProdutoMaiorFaturamento, mediaFaturamento, produtoMaiorFaturamento, produtoMenorFaturamento: real;
	repetido: boolean;

Begin
	faturamentoTotal := 0;
	produtosAcimaMedia := 0;
	
	for i := 1 to QUANTIDADE_PRODUTOS do
		begin
			repeat
				repetido := false;
				write('escreva o código do ', i, 'º produto: ');
				readln(matrizDadosProdutos[i,COLUNA_CODIGO]);
			
				for j := 1 to i - 1 do
					begin
						if i = 1 then break;
						if matrizDadosProdutos[i,COLUNA_CODIGO] = matrizDadosProdutos[j, COLUNA_CODIGO] then
							begin
								repetido := true;
								writeln('Código já cadastrado. Digite novamente.');
		        		break;
							end;
					end;
			
			until not repetido;
			write('escreva a quantidade do ', i, 'º produto: ');
			readln(matrizDadosProdutos[i,COLUNA_QUANTIDADE]);
			
			write('escreva o preço do ', i, 'º produto: ');
			readln(matrizDadosProdutos[i,COLUNA_PRECO]); 
			
			matrizDadosProdutos[i,COLUNA_FATURAMENTO] := matrizDadosProdutos[i,COLUNA_QUANTIDADE] * matrizDadosProdutos[i,COLUNA_PRECO];
			faturamentoTotal := faturamentoTotal + matrizDadosProdutos[i,COLUNA_FATURAMENTO];
		end; 
		
	mediaFaturamento := faturamentoTotal / QUANTIDADE_PRODUTOS;
	
	for i := 1 to QUANTIDADE_PRODUTOS do
		begin
			if mediaFaturamento < matrizDadosProdutos[i,COLUNA_FATURAMENTO] then produtosAcimaMedia := produtosAcimaMedia + 1;
			if i = 1 then
				begin
					produtoMaiorFaturamento := matrizDadosProdutos[i,COLUNA_FATURAMENTO];
					codigoProdutoMaiorFaturamento := matrizDadosProdutos[i,COLUNA_CODIGO];
					produtoMenorFaturamento := matrizDadosProdutos[i,COLUNA_FATURAMENTO];
					codigoProdutoMenorFaturamento := matrizDadosProdutos[i,COLUNA_CODIGO];
				end
			else if matrizDadosProdutos[i,COLUNA_FATURAMENTO] > produtoMaiorFaturamento then 
				begin
					produtoMaiorFaturamento := matrizDadosProdutos[i,COLUNA_FATURAMENTO];
					codigoProdutoMaiorFaturamento := matrizDadosProdutos[i,COLUNA_CODIGO];
				end
			else if matrizDadosProdutos[i,COLUNA_FATURAMENTO] < produtoMenorFaturamento then
				begin
					produtoMenorFaturamento := matrizDadosProdutos[i,COLUNA_FATURAMENTO];
					codigoProdutoMenorFaturamento := matrizDadosProdutos[i,COLUNA_CODIGO];
				end; 
		end;
		
	writeln('====================================================================================================');
	writeln('Faturamento total: R$', faturamentoTotal:2:2);
	writeln('Média do faturamento: R$', mediaFaturamento:2:2);
	writeln('Produto de maior faturamento: ', codigoProdutoMaiorFaturamento:0:0, ' | R$', produtoMaiorFaturamento:2:2);
	writeln('Produto de menor faturamento: ', codigoProdutoMenorFaturamento:0:0, ' | R$', produtoMenorFaturamento:2:2);
	writeln('Quantidade de produtos acima da media de faturamento: ', produtosAcimaMedia);
	writeln('====================================================================================================');
	readln();
End.