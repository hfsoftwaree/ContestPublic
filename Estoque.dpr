program Estoque;

uses
  Forms,
  UnitManutencao in 'UnitManutencao.pas' {frmManutencao},
  UnitFornecedores in 'UnitFornecedores.pas' {frmFornecedores},
  UnitEssencia in 'UnitEssencia.pas' {frmEssencia},
  UnitEntradaCapa in 'UnitEntradaCapa.pas' {frmEntradaCapa},
  UnitPrincipal in 'UnitPrincipal.pas' {frmPrincipal},
  UnitDM in 'UnitDM.pas' {DM: TDataModule},
  UnitRepEntradaCapa in 'UnitRepEntradaCapa.pas' {RepEntradaCapa},
  UnitRepEntradaCapaDetalhada in 'UnitRepEntradaCapaDetalhada.pas' {RepEntradaCapaDetalhada},
  UnitSelecaoImpressaoCapa in 'UnitSelecaoImpressaoCapa.pas' {frmSelecaoImpressao},
  UnitSelecaoImpressaoCapa1 in 'UnitSelecaoImpressaoCapa1.pas' {frmSelecaoImpressao1},
  UnitSelecaoImpressaoMiolo1 in 'UnitSelecaoImpressaoMiolo1.pas' {frmSelecaoImpressao3},
  UnitSelecaoImpressaoMiolo in 'UnitSelecaoImpressaoMiolo.pas' {frmSelecaoImpressao2},
  UnitRepEntradaMiolo in 'UnitRepEntradaMiolo.pas' {RepEntradaMiolo},
  UnitRepEntradaMioloDetalhado in 'UnitRepEntradaMioloDetalhado.pas' {RepEntradaMioloDetalhado},
  UnitSplash in 'UnitSplash.pas' {frmSplash},
  UnitDMPrincipal in 'UnitDMPrincipal.pas' {DMPrincipal: TDataModule},
  UnitCalendario in 'UnitCalendario.pas' {frmCalendario},
  UnitGraficoEntradaCapa in 'UnitGraficoEntradaCapa.pas' {frmGraficoEntradaCapa},
  UnitGraficoCapa in 'UnitGraficoCapa.pas' {frmGraficoCapa},
  UnitRepEntradaPeriodo in 'UnitRepEntradaPeriodo.pas' {RepEntradaCapaPeriodo},
  UnitSelecaoImpressaoCapaTotalPeriodo in 'UnitSelecaoImpressaoCapaTotalPeriodo.pas' {frmSelecaoImpressao4},
  UnitSelecaoImpressao5 in 'UnitSelecaoImpressao5.pas' {frmSelecaoImpressao5},
  UnitRepEntradaCapaEssencia in 'UnitRepEntradaCapaEssencia.pas' {RepEntradaCapaEssencia},
  UnitPesquisa in 'UnitPesquisa.pas' {frmPesquisa},
  UnitMiolo in 'UnitMiolo.pas' {frmEntradaMiolo},
  UnitGraficoMiolo in 'UnitGraficoMiolo.pas' {frmGraficoMiolo},
  UnitGraficoEntradaMiolo in 'UnitGraficoEntradaMiolo.pas' {frmGraficoEntradaMiolo},
  UnitSelecaoImpressao6 in 'UnitSelecaoImpressao6.pas' {frmSelecaoImpressao6},
  UnitRepEntradaMioloPeriodo in 'UnitRepEntradaMioloPeriodo.pas' {RepEntradaMioloPeriodo},
  UnitSelecaoImpressao7 in 'UnitSelecaoImpressao7.pas' {frmSelecaoImpressao7},
  UnitRepEntradaMioloEssencia in 'UnitRepEntradaMioloEssencia.pas' {RepEntradaMioloEssencia},
  UnitProducaoChapa in 'UnitProducaoChapa.pas' {frmProducaoChapa},
  UnitPesquisa1 in 'UnitPesquisa1.pas' {frmPesquisa1},
  UnitRepFornecedores in 'UnitRepFornecedores.pas' {RepFornecedores},
  UnitRepEssencia in 'UnitRepEssencia.pas' {RepEssencia},
  UnitRepCredor in 'UnitRepCredor.pas' {RepCredores},
  UnitCredor in 'UnitCredor.pas' {frmCredor},
  UnitPesquisa2 in 'UnitPesquisa2.pas' {frmPesquisa2},
  UnitSelecaoImpressao8 in 'UnitSelecaoImpressao8.pas' {frmSelecaoImpressao8},
  UnitRepCompensado in 'UnitRepCompensado.pas' {RepCompensado},
  UnitVendas in 'UnitVendas.pas' {frmVendas},
  UnitPesquisa3 in 'UnitPesquisa3.pas' {frmPesquisa3},
  UnitRepVendas in 'UnitRepVendas.pas' {RepVendas},
  UnitSelecaoImpressao9 in 'UnitSelecaoImpressao9.pas' {frmSelecaoImpressao9},
  UnitPesquisa4 in 'UnitPesquisa4.pas' {frmPesquisa4},
  UnitRepVendas1 in 'UnitRepVendas1.pas' {RepVendas1},
  UnitConsulta in 'UnitConsulta.pas' {frmConsulta},
  UnitEICapa in 'UnitEICapa.pas' {frmSaldoCapa},
  UnitEIMiolo in 'UnitEIMiolo.pas' {frmSaldoMiolo},
  UnitSelecaoImpressao10 in 'UnitSelecaoImpressao10.pas' {frmSelecaoImpressao10},
  UnitConsultaCola in 'UnitConsultaCola.pas' {frmConsultaCola},
  UnitCalculator in 'UnitCalculator.pas' {Calculator},
  UnitSobreEstoque in 'UnitSobreEstoque.pas' {frmSobreEstoque},
  UnitInfo in 'UnitInfo.pas' {frmInfo},
  UnitSobre in 'UnitSobre.pas' {FrmSobre};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Contesto';
  frmsplash := Tfrmsplash.Create (application);
  frmsplash.show;
  frmsplash.Refresh;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TfrmManutencao, frmManutencao);
  Application.CreateForm(TfrmFornecedores, frmFornecedores);
  Application.CreateForm(TfrmEssencia, frmEssencia);
  Application.CreateForm(TfrmEntradaCapa, frmEntradaCapa);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TRepEntradaCapa, RepEntradaCapa);
  Application.CreateForm(TRepEntradaCapaDetalhada, RepEntradaCapaDetalhada);
  Application.CreateForm(TfrmSelecaoImpressao, frmSelecaoImpressao);
  Application.CreateForm(TfrmSelecaoImpressao1, frmSelecaoImpressao1);
  Application.CreateForm(TfrmSelecaoImpressao3, frmSelecaoImpressao3);
  Application.CreateForm(TfrmSelecaoImpressao2, frmSelecaoImpressao2);
  Application.CreateForm(TRepEntradaMiolo, RepEntradaMiolo);
  Application.CreateForm(TRepEntradaMioloDetalhado, RepEntradaMioloDetalhado);
  Application.CreateForm(TfrmSplash, frmSplash);
  Application.CreateForm(TDMPrincipal, DMPrincipal);
  Application.CreateForm(TfrmCalendario, frmCalendario);
  Application.CreateForm(TfrmGraficoEntradaCapa, frmGraficoEntradaCapa);
  Application.CreateForm(TfrmGraficoCapa, frmGraficoCapa);
  Application.CreateForm(TRepEntradaCapaPeriodo, RepEntradaCapaPeriodo);
  Application.CreateForm(TfrmSelecaoImpressao4, frmSelecaoImpressao4);
  Application.CreateForm(TfrmSelecaoImpressao5, frmSelecaoImpressao5);
  Application.CreateForm(TRepEntradaCapaEssencia, RepEntradaCapaEssencia);
  Application.CreateForm(TfrmPesquisa, frmPesquisa);
  Application.CreateForm(TfrmEntradaMiolo, frmEntradaMiolo);
  Application.CreateForm(TfrmGraficoMiolo, frmGraficoMiolo);
  Application.CreateForm(TfrmGraficoEntradaMiolo, frmGraficoEntradaMiolo);
  Application.CreateForm(TfrmSelecaoImpressao6, frmSelecaoImpressao6);
  Application.CreateForm(TRepEntradaMioloPeriodo, RepEntradaMioloPeriodo);
  Application.CreateForm(TfrmSelecaoImpressao7, frmSelecaoImpressao7);
  Application.CreateForm(TRepEntradaMioloEssencia, RepEntradaMioloEssencia);
  Application.CreateForm(TfrmProducaoChapa, frmProducaoChapa);
  Application.CreateForm(TfrmPesquisa1, frmPesquisa1);
  Application.CreateForm(TRepFornecedores, RepFornecedores);
  Application.CreateForm(TRepEssencia, RepEssencia);
  Application.CreateForm(TRepCredores, RepCredores);
  Application.CreateForm(TfrmCredor, frmCredor);
  Application.CreateForm(TfrmPesquisa2, frmPesquisa2);
  Application.CreateForm(TfrmSelecaoImpressao8, frmSelecaoImpressao8);
  Application.CreateForm(TRepCompensado, RepCompensado);
  Application.CreateForm(TfrmVendas, frmVendas);
  Application.CreateForm(TfrmPesquisa3, frmPesquisa3);
  Application.CreateForm(TRepVendas, RepVendas);
  Application.CreateForm(TfrmSelecaoImpressao9, frmSelecaoImpressao9);
  Application.CreateForm(TfrmPesquisa4, frmPesquisa4);
  Application.CreateForm(TRepVendas1, RepVendas1);
  Application.CreateForm(TfrmConsulta, frmConsulta);
  Application.CreateForm(TfrmSaldoCapa, frmSaldoCapa);
  Application.CreateForm(TfrmSaldoMiolo, frmSaldoMiolo);
  Application.CreateForm(TfrmSelecaoImpressao10, frmSelecaoImpressao10);
  Application.CreateForm(TfrmConsultaCola, frmConsultaCola);
  Application.CreateForm(TCalculator, Calculator);
  Application.CreateForm(TfrmSobreEstoque, frmSobreEstoque);
  Application.CreateForm(TfrmInfo, frmInfo);
  Application.CreateForm(TFrmSobre, FrmSobre);
  Application.Run;
end.
