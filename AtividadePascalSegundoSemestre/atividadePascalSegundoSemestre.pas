program atividade;
uses CRT;

type //Criando um tipo para armazenar corretamente os dias da semana
    diasSemana = array[1..5] of string;

const
    QUANTIDADE_LABORATORIO = 4;
    QUANTIDADE_LIMITE_CONSUMO = QUANTIDADE_LABORATORIO;
    QUANTIDADE_DIAS_SEMANA = 5;
    DIAS_SEMANA: diasSemana = ('SEG - Segunda-Feira', 'TER - Terça-Feira', 'QUA - Quarta-Feira', 'QUI - Quinta-Feira', 'SEX - Sexta-Feira');

    //Variáveis de controle
    EXIBIR_CONSUMO = 1;
    CONSULTAR_LABORATORIO = 2;
    EXIBIR_CONSUMO_TOTAL_LABORATORIO = 3;
    EXIBIR_MEDIA_DIARIA_LABORATORIO = 4;
    MOSTRAR_CONSUMO_ACIMA_LIMITE = 5;
    EXIBIR_CLASSIFICACAO_LABORATORIO = 6;
    EXIBIR_CONSUMO_TOTAL_DIA = 7;
    EXIBIR_RELATORIO_GERAL = 8;
    ENCERRAR = 0;

    CONTROLADA = 1;
    ATENCAO = 2;
    PREOCUPANTE = 3;
    CRITICA = 4;

var
    vetorLaboratorio: array[1..QUANTIDADE_LABORATORIO] of string;
    vetorLimiteConsumo: array[1..QUANTIDADE_LIMITE_CONSUMO] of real;
    vetorMediaConsumoDiario: array[1..QUANTIDADE_LABORATORIO] of real;
    vetorTotalConsumoPorLaboratorio: array[1..QUANTIDADE_LABORATORIO] of real;
    matrizConsumoDiario: array[1..QUANTIDADE_LABORATORIO, 1..QUANTIDADE_DIAS_SEMANA] of real;
    i, j, opcao, contadorDiasAcimaLimite, numLaboratorio: integer;

procedure ExibirConsumo();
    begin
      writeln('Laboratorio              Seg     Ter     Qua     Qui     Sex');
      for i := 1 to QUANTIDADE_LABORATORIO do
        begin
          write(vetorLaboratorio[i]:25);

          for j := 1 to QUANTIDADE_DIAS_SEMANA do
            begin
              write(matrizConsumoDiario[i,j]:8:1);
            end;

          writeln;
        end;
    end;

procedure ConsultarLaboratorio(numLaboratorio: integer);
    begin
      contadorDiasAcimaLimite := 0;

      while (numLaboratorio < 1) or (numLaboratorio > QUANTIDADE_LABORATORIO) do
        begin
          writeln('Laboratorio invalido!');
          readln(numLaboratorio);
        end;

      for i := 1 to QUANTIDADE_DIAS_SEMANA do
        begin
          if matrizConsumoDiario[numLaboratorio, i] > vetorLimiteConsumo[numLaboratorio] then
            begin
              contadorDiasAcimaLimite :=
              contadorDiasAcimaLimite + 1;
            end;
        end;

      writeln('Nome: ', vetorLaboratorio[numLaboratorio]);
      writeln('Limite diario: ', vetorLimiteConsumo[numLaboratorio]:0:1);
      writeln('Consumo SEG: ', matrizConsumoDiario[numLaboratorio, 1]:0:1);
      writeln('Consumo TER: ', matrizConsumoDiario[numLaboratorio, 2]:0:1);
      writeln('Consumo QUA: ', matrizConsumoDiario[numLaboratorio, 3]:0:1);
      writeln('Consumo QUI: ', matrizConsumoDiario[numLaboratorio, 4]:0:1);
      writeln('Consumo SEX: ', matrizConsumoDiario[numLaboratorio, 5]:0:1);
      writeln('Consumo total: ', vetorTotalConsumoPorLaboratorio[numLaboratorio]:0:1);
      writeln('Media de consumo: ', (vetorTotalConsumoPorLaboratorio[numLaboratorio]/QUANTIDADE_DIAS_SEMANA):0:1);
      writeln('Quantidade de dias acima do limite: ', contadorDiasAcimaLimite);
    end;

procedure ExibirConsumoTotalLaboratorio();
    begin
      for i := 1 to QUANTIDADE_LABORATORIO do
        begin
          writeln('Consumo total do Laboratorio de(o/a) ', vetorLaboratorio[i], ': ', vetorTotalConsumoPorLaboratorio[i]);
        end;
    end;

procedure ExibirMediaConsumoDiarioLaboratorio();
    begin
      for i := 1 to QUANTIDADE_LABORATORIO do
        begin
          writeln('Media de consumo diario do Laboratorio de(o/a) ', vetorLaboratorio[i], ': ', (vetorTotalConsumoPorLaboratorio[I]/QUANTIDADE_DIAS_SEMANA):0:1);
        end;
    end;

procedure MostrarConsumoAcimaLimite();
    var
      excesso: real;
    begin
      for i := 1 to QUANTIDADE_LABORATORIO do
        for j := 1 to QUANTIDADE_DIAS_SEMANA do 
          begin 
            if matrizConsumoDiario[i, j] > vetorLimiteConsumo[i] then
              begin
                excesso := matrizConsumoDiario[i, j] - vetorLimiteConsumo[i];
                writeln('Laboratório de(o/a) ', vetorLaboratorio[i]);
                writeln(DIAS_SEMANA[j], ': ', matrizConsumoDiario[i, j]:0:1, ' kWh');
                writeln('Limite: ', vetorLimiteConsumo[i]:0:1, ' kWh');
                writeln('Excesso: ', excesso:0:1, ' kWh');
              end
            else writeln('Não houve excesso ou estouro do limite'); 
          end;
    end;

procedure ExibirClassificacaoLaboratorio();
    var
      classificacao: string;
      media: real;
    begin
      for i := 1 to QUANTIDADE_LABORATORIO do
        begin
          media := vetorTotalConsumoPorLaboratorio[i] / QUANTIDADE_DIAS_SEMANA;
          if (media <= (0.7 * vetorLimiteConsumo[i])) then classificacao := 'Economico'
          else if (media > (0.7 * vetorLimiteConsumo[i])) and (media <= vetorLimiteConsumo[i]) then classificacao := 'Adequado'
          else if (media >  vetorLimiteConsumo[i]) and (media <= (1.2 * vetorLimiteConsumo[i])) then classificacao := 'Elevado'
          else classificacao := 'Critico';

          writeln('Laboratório de(o/a) ', vetorLaboratorio[i]);
          writeln('Media: ', media:0:1, ' kWh');
          writeln('Limite: ', vetorLimiteConsumo[i]:0:1, ' kWh');
          writeln('Classificação: ', classificacao);
        end;
    end;

procedure ExibirConsumoPorDia();
    var
      totalDia: real;
    begin
      for i := 1 to QUANTIDADE_DIAS_SEMANA do
        begin
          totalDia := 0;
          for j := 1 to QUANTIDADE_LABORATORIO do
            begin
              totalDia := totalDia + matrizConsumoDiario[j, i];
            end;

          writeln(DIAS_SEMANA[i], ': ', totalDia:0:1, ' kWh')
        end;
    end;

procedure ExibirRelatorioGeral();
    var
      somaTotalInstituicao, mediaDiariaGeral, percentualAcimaLimite, diaMaiorConsumo, totalDia: real;
      indiceMaior, indiceMenor, totalAcimaLimite, indiceDiaMaiorConsumo, faixa: integer;
    begin
      somaTotalInstituicao := 0; 
      totalAcimaLimite := 0;
      diaMaiorConsumo := 0;
      indiceMaior := 1;
      indiceMenor := 1;
      for i := 1 to QUANTIDADE_LABORATORIO do
        begin
          for j := 1 to QUANTIDADE_DIAS_SEMANA do
            begin
              somaTotalInstituicao := somaTotalInstituicao + matrizConsumoDiario[i, j];
              mediaDiariaGeral := somaTotalInstituicao / (QUANTIDADE_LABORATORIO * QUANTIDADE_DIAS_SEMANA);
              if matrizConsumoDiario[i, j] > vetorLimiteConsumo[i] then totalAcimaLimite := totalAcimaLimite + 1;
            end;
        end;
      for i := 2 to QUANTIDADE_LABORATORIO do
        begin
          if vetorTotalConsumoPorLaboratorio[i] > vetorTotalConsumoPorLaboratorio[indiceMaior] then indiceMaior := i
          else if vetorTotalConsumoPorLaboratorio[i] < vetorTotalConsumoPorLaboratorio[indiceMenor] then indiceMenor := i;
        end;
      percentualAcimaLimite := (totalAcimaLimite / (QUANTIDADE_DIAS_SEMANA * QUANTIDADE_LABORATORIO)) * 100;
      for i := 1 to QUANTIDADE_DIAS_SEMANA do
        begin
          totalDia := 0;
          for j := 1 to QUANTIDADE_LABORATORIO do
            begin
              totalDia := totalDia + matrizConsumoDiario[j, i];
            end;
          if totalDia > diaMaiorConsumo then 
            begin
              diaMaiorConsumo := totalDia;
              indiceDiaMaiorConsumo := i
            end;
        end;

      if percentualAcimaLimite <= 10 then
        faixa := 1
      else if percentualAcimaLimite <= 25 then
        faixa := 2
      else if percentualAcimaLimite <= 50 then
        faixa := 3
      else
        faixa := 4;

      case faixa of
        CONTROLADA: writeln('Situação geral: Controlada');
        ATENCAO: writeln('Situação geral: Atenção');
        PREOCUPANTE: writeln('Situação geral: Preocupante');
        CRITICA: writeln('Situação geral: Crítica');
      end;

      writeln('Soma total da instituição: ', somaTotalInstituicao:0:1);
      writeln('Media diaria geral: ', mediaDiariaGeral:0:1);
      writeln('Laboratorio com maior consumo: ', vetorLaboratorio[indiceMaior]);
      writeln('Laboratorio com menor consumo: ', vetorLaboratorio[indiceMenor]);
      writeln('Quantidade de registros acima do limite: ', totalAcimaLimite);
      writeln('Percentual acima do limite: ', percentualAcimaLimite:0:1, '%');
      writeln('Dia com maior consumo: ', DIAS_SEMANA[indiceDiaMaiorConsumo], ' ', diaMaiorConsumo:0:1, ' kWh');
    end;

Begin
    contadorDiasAcimaLimite := 0;
    writeln('Primeiramente, cadastre o nome dos laboratorios');
    for i := 1 to QUANTIDADE_LABORATORIO do
      begin
        write('Nome do ', i, 'º laboratorio: ');
        readln(vetorLaboratorio[i]);
        repeat 
          write('Qual o limite de consumo, em kWh, deste laboratorio?: ');
          readln(vetorLimiteConsumo[i]);
        until vetorLimiteConsumo[i] > 0;
      end;
    
    for i := 1 to QUANTIDADE_LABORATORIO do
      for j := 1 to QUANTIDADE_DIAS_SEMANA do
        begin
          repeat
            write('Informe o consumo diario, em kWh, do laboratorio de(o/a) ', vetorLaboratorio[i], ' no dia ', DIAS_SEMANA[j], ': ');
            readln(matrizConsumoDiario[i, j]);            
          until matrizConsumoDiario[i, j] >= 0;
        end;
    
    for i := 1 to QUANTIDADE_LABORATORIO do
      begin
        vetorTotalConsumoPorLaboratorio[i] := 0;
        for j := 1 to QUANTIDADE_DIAS_SEMANA do
          begin
            vetorTotalConsumoPorLaboratorio[i] := vetorTotalConsumoPorLaboratorio[i] + matrizConsumoDiario[i, j];
          end;
      end;
    
    // for i := 1 to QUANTIDADE_LABORATORIO do
    //   begin
    //     vetorMediaConsumoDiario[i] := vetorTotalConsumoPorLaboratorio[i] / QUANTIDADE_DIAS_SEMANA;
    //   end;

    repeat
      writeln;
      writeln('=========================================');
      writeln('=  SISTEMA DE MONITORAMENTE DE ENERGIA  =');
      writeln('=========================================');
      writeln('1 - Exibir todos os consumos');
      writeln('2 - Consultar um laboratório');
      writeln('3 - Exibir consumo total por laboratório');
      writeln('4 - Exibir média diária por laboratório');
      writeln('5 - Mostrar consumos acima do limite');
      writeln('6 - Exibir classificação dos laboratórios');
      writeln('7 - Exibir consumo total por dia');
      writeln('8 - Exibir relatório geral');
      writeln('0 - Encerrar');
      write('Escolha uma opção: ');
      readln(opcao);

      case opcao of
        EXIBIR_CONSUMO: ExibirConsumo;
        CONSULTAR_LABORATORIO:
          begin
            write('Qual numero do laboratorio?: ');
            readln(numLaboratorio);
            ConsultarLaboratorio(numLaboratorio);
          end;
        EXIBIR_CONSUMO_TOTAL_LABORATORIO: ExibirConsumoTotalLaboratorio;
        EXIBIR_MEDIA_DIARIA_LABORATORIO: ExibirMediaConsumoDiarioLaboratorio;
        MOSTRAR_CONSUMO_ACIMA_LIMITE: MostrarConsumoAcimaLimite;
        EXIBIR_CLASSIFICACAO_LABORATORIO: ExibirClassificacaoLaboratorio;
        EXIBIR_CONSUMO_TOTAL_DIA: ExibirConsumoPorDia;
        EXIBIR_RELATORIO_GERAL: ExibirRelatorioGeral;

      end;

    until opcao = 0;
End.