Program estoqueProdutos;
uses CRT;

const
	QUANTIDADE_PRODUTOS = 10;

var
	produtos, quantidade: array[1..QUANTIDADE_PRODUTOS] of integer;	
	preco, faturamento: array[1..QUANTIDADE_PRODUTOS] of real;
	i, j, produtosAcimaMedia, codigoProdutoMenorFaturamento, codigoProdutoMaiorFaturamento: integer;
	faturamentoTotal, mediaFaturamento, produtoMaiorFaturamento, produtoMenorFaturamento: real;
	repetido: boolean;

Begin
	for i := 1 to QUANTIDADE_PRODUTOS do
		begin
			repeat
				repetido := false;
				write('escreva o código do ', i, 'º produto: ');
				readln(produtos[i]);
			
				for j := 1 to i - 1 do
					begin
						if i = 1 then break;
						if produtos[j] = produtos[i] then
							begin
								repetido := true;
								writeln('Código já cadastrado. Digite novamente.');
		        		break;
							end;
					end;
			
			until not repetido;
			
			write('escreva a quantidade do ', i, 'º produto: ');
			readln(quantidade[i]);
			
			write('escreva o preço do ', i, 'º produto: ');
			readln(preco[i]);
			
			faturamento[i] := quantidade[i] * preco[i];
			faturamentoTotal := faturamentoTotal + faturamento[i];
		end;
		
	mediaFaturamento := faturamentoTotal / QUANTIDADE_PRODUTOS;
	
	for i := 1 to QUANTIDADE_PRODUTOS do
		begin
			if mediaFaturamento < faturamento[i] then produtosAcimaMedia := produtosAcimaMedia + 1;
			if i = 1 then
				begin
					produtoMaiorFaturamento := faturamento[i];
					codigoProdutoMaiorFaturamento := produtos[i];
					produtoMenorFaturamento := faturamento[i];
					codigoProdutoMenorFaturamento := produtos[i];
				end
			else if faturamento[i] > produtoMaiorFaturamento then 
				begin
					produtoMaiorFaturamento := faturamento[i];
					codigoProdutoMaiorFaturamento := produtos[i];
				end
			else if faturamento[i] < produtoMenorFaturamento then
				begin
					produtoMenorFaturamento := faturamento[i];
					codigoProdutoMenorFaturamento := produtos[i];
				end; 
			
		end;
	writeln('====================================================================================================');
	writeln('Faturamento total: R$', faturamentoTotal:2:2);
	writeln('Média do faturamento: R$', mediaFaturamento:2:2);
	writeln('Produto de maior faturamento: ', codigoProdutoMaiorFaturamento, ' | R$', produtoMaiorFaturamento:2:2);
	writeln('Produto de menor faturamento: ', codigoProdutoMenorFaturamento, ' | R$', produtoMenorFaturamento:2:2);
	writeln('Quantidade de produtos acima da media de faturamento: ', produtosAcimaMedia);
	writeln('====================================================================================================');
	readln();
End.