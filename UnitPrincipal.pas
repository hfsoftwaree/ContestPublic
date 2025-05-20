unit UnitPrincipal;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ImgList, Menus, ComCtrls, Buttons, Db, DBTables, Gauges,
  StdCtrls, Mask, DBCtrls, ADODB, FileCtrl, Shellapi, EAppProt, EXPStyle,
  jpeg, EOneInst, EHintBal, EFocCol, EKeyNav, ESpshScr, IBCustomDataSet,
  IBQuery, IBDatabase, XPMenu, CJVScrollLabel, ToolWin, RXShell, urlMon, Registry, ShlObj;

type
  TfrmPrincipal = class(TForm)
    StatusBar1: TStatusBar;
    MainMenu1: TMainMenu;
    Pedido: TMenuItem;
    NovaCAT1: TMenuItem;
    Utilitario1: TMenuItem;
    Sobre1: TMenuItem;
    N3: TMenuItem;
    Setup: TPrinterSetupDialog;
    ImageList1: TImageList;
    Timer1: TTimer;
    EEmpresa1: TMenuItem;
    Nova1: TMenuItem;
    BackupRestore1: TMenuItem;
    Gravar: TMenuItem;
    RestaurarCpiadeSegurana1: TMenuItem;
    Entradas1: TMenuItem;
    Entradas2: TMenuItem;
    Capa1: TMenuItem;
    Fornecedores1: TMenuItem;
    Relatrio1: TMenuItem;
    Entrada1: TMenuItem;
    Capa2: TMenuItem;
    Sair1: TMenuItem;
    Miolo1: TMenuItem;
    EvOneInstance1: TEvOneInstance;
    EvFocusColor1: TEvFocusColor;
    EvHintBalloon1: TEvHintBalloon;
    N1: TMenuItem;
    MioloTotal1: TMenuItem;
    MioloDetalhado1: TMenuItem;
    Miolo2: TMenuItem;
    Utilitrios1: TMenuItem;
    Calculadora1: TMenuItem;
    Calendario1: TMenuItem;
    Grficos1: TMenuItem;
    EntradadeCapa1: TMenuItem;
    otal1: TMenuItem;
    otalporEssencia1: TMenuItem;
    EntradaMiolo1: TMenuItem;
    otalporPerodo1: TMenuItem;
    otalporEssncia1: TMenuItem;
    Image1: TImage;
    EvKeyNavigator1: TEvKeyNavigator;
    XPMenu1: TXPMenu;
    ProduoCompensado1: TMenuItem;
    ProduoCompensados1: TMenuItem;
    Cadastro1: TMenuItem;
    Fornecedores2: TMenuItem;
    Essencia1: TMenuItem;
    Creedores1: TMenuItem;
    Vendas1: TMenuItem;
    N4: TMenuItem;
    Creedores2: TMenuItem;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    ToolButton8: TToolButton;
    ToolButton9: TToolButton;
    ToolButton10: TToolButton;
    ToolButton11: TToolButton;
    ToolButton12: TToolButton;
    ToolButton13: TToolButton;
    ToolButton14: TToolButton;
    ToolButton15: TToolButton;
    ToolButton16: TToolButton;
    ToolButton17: TToolButton;
    ToolButton22: TToolButton;
    ToolButton23: TToolButton;
    ToolButton24: TToolButton;
    ToolButton25: TToolButton;
    ToolButton26: TToolButton;
    ToolButton28: TToolButton;
    ToolButton29: TToolButton;
    ToolButton19: TToolButton;
    ToolButton27: TToolButton;
    ToolButton30: TToolButton;
    N5: TMenuItem;
    VendadeCompensado1: TMenuItem;
    EmpresaDetalhada1: TMenuItem;
    N6: TMenuItem;
    otal2: TMenuItem;
    ToolButton20: TToolButton;
    Consulta1: TMenuItem;
    Estoque2: TMenuItem;
    ToolButton21: TToolButton;
    ToolButton31: TToolButton;
    EstoqueInicial1: TMenuItem;
    N7: TMenuItem;
    Capa3: TMenuItem;
    Miolo3: TMenuItem;
    ConsumodeCola1: TMenuItem;
    ToolButton18: TToolButton;
    EstoqueInicial2: TMenuItem;
    N2: TMenuItem;
    N8: TMenuItem;
    U1: TMenuItem;
    Conteudo1: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    EnviaremailparaSuporte1: TMenuItem;
    AcessoPaginadaHFnaInternet1: TMenuItem;
    VereficarAtualizaes1: TMenuItem;
    RxTrayIcon1: TRxTrayIcon;
    CJVScrollLabel1: TCJVScrollLabel;
    EvAppProtect1: TEvAppProtect;
    N11: TMenuItem;
    ConfigurarBancodeDados1: TMenuItem;
    procedure Timer1Timer(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure Sair2Click(Sender: TObject);
    procedure Nova1Click(Sender: TObject);
    procedure ControledePedidos1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RestaurarCpiadeSegurana1Click(Sender: TObject);
    procedure Capa1Click(Sender: TObject);
    procedure Miolo1Click(Sender: TObject);
    procedure NovaCAT1Click(Sender: TObject);
    procedure Fornecedores1Click(Sender: TObject);
    procedure Capa2Click(Sender: TObject);
    procedure MioloTotal1Click(Sender: TObject);
    procedure MioloDetalhado1Click(Sender: TObject);
    procedure Miolo2Click(Sender: TObject);
    procedure GravarClick(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure Anotaes1Click(Sender: TObject);
    procedure Calendario1Click(Sender: TObject);
    procedure Calculadora1Click(Sender: TObject);
    procedure EntradadeCapa1Click(Sender: TObject);
    procedure otal1Click(Sender: TObject);
    procedure otalporEssencia1Click(Sender: TObject);
    procedure EntradaMiolo1Click(Sender: TObject);
    procedure otalporPerodo1Click(Sender: TObject);
    procedure otalporEssncia1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure EvOneInstance1Duplicated(Sender: TObject;
      PrevInstance: Cardinal);
    procedure ProduoCompensado1Click(Sender: TObject);
    procedure Fornecedores2Click(Sender: TObject);
    procedure Essencia1Click(Sender: TObject);
    procedure Creedores2Click(Sender: TObject);
    procedure Creedores1Click(Sender: TObject);
    procedure VendadeCompensado1Click(Sender: TObject);
    procedure EmpresaDetalhada1Click(Sender: TObject);
    procedure otal2Click(Sender: TObject);
    procedure ToolButton30Click(Sender: TObject);
    procedure Estoque2Click(Sender: TObject);
    procedure Capa3Click(Sender: TObject);
    procedure Miolo3Click(Sender: TObject);
    procedure ProduoCompensados1Click(Sender: TObject);
    procedure ConsumodeCola1Click(Sender: TObject);
    procedure EstoqueInicial2Click(Sender: TObject);
    procedure EnviaremailparaSuporte1Click(Sender: TObject);
    procedure AcessoPaginadaHFnaInternet1Click(Sender: TObject);
    procedure U1Click(Sender: TObject);
    procedure VereficarAtualizaes1Click(Sender: TObject);
    procedure ConfigurarBancodeDados1Click(Sender: TObject);
    procedure CJVScrollLabel1Click(Sender: TObject);

  private
  procedure  CapturarPatch(FCaption, FolderName: string);
  procedure ValidarBasedeDados;
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

uses UnitEssencia, UnitManutencao, UnitEntradaCapa, UnitMiolo,
  UnitFornecedores, UnitDM, UnitSelecaoImpressaoCapa,
  UnitSelecaoImpressaoCapa1, UnitSelecaoImpressaoMiolo,
  UnitSelecaoImpressaoMiolo1, UnitDMPrincipal, UnitBackup, UnitSobre,
  UnitAnotacoes, UnitCalendario, UnitGraficoCapa, UnitGraficoEntradaCapa,
  UnitSelecaoImpressaoCapaTotalPeriodo, UnitSelecaoImpressao5,
  UnitDMRepEntradaCapa, UnitRepEntradaCapa, UnitRepEntradaCapaTotal,
  UnitDMGrafico, UnitGraficoMiolo, UnitDMRelatorio, UnitSelecaoImpressao6,
  UnitSelecaoImpressao7, UnitProducaoChapa, UnitRepFornecedores,
  UnitRepEssencia, UnitCredor, UnitRepCredor, UnitVendas,
  UnitSelecaoImpressao9, UnitRepVendas, UnitRepVendas1, UnitConsulta,
  UnitEICapa, UnitEIMiolo, UnitSelecaoImpressao10, UnitConsultaCola,
  UnitCalculator, UnitSobreEstoque, UnitInfo;

{$R *.DFM}

Procedure TfrmPrincipal.ValidarBasedeDados;
var IniFile: TRegIniFile;
    Chave: String;
begin
    IniFile:=TRegIniFile.Create('Software\HF Softwares');
    chave:=IniFile.ReadString('Contesto','CaminhoDados',chave);
    DM.IBDatabase1.DatabaseName := (Chave)+'\Contesto.gdb';
end;

procedure ExecutePrograma(Nome, Parametros: String);
Var
 Comando: Array[0..1024] of Char;
 Parms: Array[0..1024] of Char;
begin
  StrPCopy (Comando, Nome);
  StrPCopy (Parms, Parametros);
  ShellExecute (0, Nil, Comando, Parms, Nil, SW_ShowNormal);
end;

procedure TfrmPrincipal.Timer1Timer(Sender: TObject);
begin
  StatusBar1.Panels[2].Text:=DateToStr(now);
  StatusBar1.Panels[3].Text:=TimeToStr(now);
end;

procedure TfrmPrincipal.Sair1Click(Sender: TObject);
var a: integer;
begin
     if Application.MessageBox ('Confirma saida do sistema?','Confirmação', mb_YesNo +
     MB_ICONQUESTION) = idYes then
     begin
     DM.IBDatabase1.Connected := False;
     Application.Terminate;
     end
     else
end;


procedure TfrmPrincipal.Sair2Click(Sender: TObject);
begin
     if Application.MessageBox ('Confirma saida do sistema?','Confirmação', mb_YesNo +
     MB_ICONQUESTION) = idYes then
     begin
     Application.Terminate;
     end
end;

procedure TfrmPrincipal.Nova1Click(Sender: TObject);
begin
Application.CreateForm (TfrmManutencao, frmManutencao);
frmManutencao.Show;
end;

procedure TfrmPrincipal.ControledePedidos1Click(Sender: TObject);
begin
ShowMessage ('Menu não disponivel nesta versão');
end;

procedure TfrmPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
var a: integer;
begin
     if Application.MessageBox ('Confirma saida do sistema?','Confirmação', mb_YesNo +
     MB_ICONQUESTION) = idYes then
     begin
     DM.QManutencao.Close;
     DM.IBDatabase1.Connected := False;
     Application.Terminate;
     end
     else
     Application.Run;
end;

procedure TfrmPrincipal.RestaurarCpiadeSegurana1Click(Sender: TObject);
begin
if fileexists('C:\Arquivos de programas\HF-Software\Contesto\Backup.exe') then
begin
DM.IBDatabase1.Connected := False;
ExecutePrograma('C:\Arquivos de programas\HF-Software\Contesto\Backup.exe','');
end
else
Application.MessageBox('Erro, arquivo "Backup.exe" não encontrado, entre em contado com o Administrador do Sistema!', 'Informação', mb_Ok + mb_IconError);
end;

procedure TfrmPrincipal.Capa1Click(Sender: TObject);
begin
  DM.QEssencia.Open;
  if DM.QEssencia.RecordCount = 0 then
begin
  DM.QEssencia.Close;
  Application.MessageBox('Essencia deve ser informada para preenchimento desta ficha!', 'Informação', mb_Ok + mb_IconInformation);
  Application.CreateForm (TfrmEssencia, frmEssencia);
  frmEssencia.Show;
  end
  else
begin
  DM.TFornecedor.Open;
  if DM.TFornecedor.RecordCount = 0 then
  begin
  DM.TFornecedor.Close;
  Application.MessageBox('Fornecedor deve ser informado para preenchimento desta ficha!', 'Informação', mb_Ok + mb_IconInformation);
  Application.CreateForm (TfrmFornecedores, frmFornecedores);
  frmFornecedores.Show;
  end;
  end;

if (DM.QEssencia.RecordCount <> 0 ) and (DM.TFornecedor.RecordCount <> 0 ) then
begin
Application.CreateForm (TfrmEntradaCapa, frmEntradaCapa);
frmEntradaCapa.Show;
end;
end;

procedure TfrmPrincipal.Miolo1Click(Sender: TObject);
begin
  DM.TManutencao.Close;
  DM.TManutencao.Open;
  if DM.TManutencao.RecordCount = 0 then
begin
  DM.TManutencao.Close;
  Application.MessageBox('Ficha Manutenção da Empresa não informada, é necessário informa-lá!', 'Informação', mb_Ok + mb_IconInformation);
  Application.CreateForm (TfrmManutencao, frmManutencao);
  frmManutencao.Show;
  end
  else
begin
  DM.TEntradaCapa.Close;
  DM.TEntradaCapa.Open;
  if DM.TEntradaCapa.RecordCount = 0 then
  begin
  DM.TEntradaCapa.Close;
  Application.MessageBox('Não há lançamentos de Entrada de Capa para execução deste procedimento!', 'Informação', mb_Ok + mb_IconInformation);
  end;
  end;

  if (DM.TManutencao.RecordCount <> 0) and (DM.TEntradaCapa.RecordCount <> 0) then
begin
  DM.TEntradaCapa.Close;
  Application.CreateForm (TfrmSelecaoImpressao1, frmSelecaoImpressao1);
  frmSelecaoImpressao1.Show;
end;
end;

procedure TfrmPrincipal.NovaCAT1Click(Sender: TObject);
begin
Application.CreateForm (TfrmEssencia, frmEssencia);
frmEssencia.Show;
end;

procedure TfrmPrincipal.Fornecedores1Click(Sender: TObject);
begin
Application.CreateForm (TfrmFornecedores, frmFornecedores);
frmFornecedores.Show;
end;

procedure TfrmPrincipal.Capa2Click(Sender: TObject);
begin
  DM.TManutencao.Close;
  DM.TManutencao.Open;
  if DM.TManutencao.RecordCount = 0 then
begin
  DM.TManutencao.Close;
  Application.MessageBox('Ficha Manutenção da Empresa não informada, é necessário informa-lá!', 'Informação', mb_Ok + mb_IconInformation);
  Application.CreateForm (TfrmManutencao, frmManutencao);
  frmManutencao.Show;
  end
  else
begin
  DM.TEntradaCapa.Close;
  DM.TEntradaCapa.Open;
  if DM.TEntradaCapa.RecordCount = 0 then
  begin
  DM.TEntradaCapa.Close;
  Application.MessageBox('Não há lançamentos de Entrada de Capa para execução deste procedimento!', 'Informação', mb_Ok + mb_IconInformation);
  end;
  end;

  if (DM.TManutencao.RecordCount <> 0) and (DM.TEntradaCapa.RecordCount <> 0) then
begin
  DM.TEntradaCapa.Close;
  Application.CreateForm (TfrmSelecaoImpressao, frmSelecaoImpressao);
  frmSelecaoImpressao.Show;
end;
end;

procedure TfrmPrincipal.MioloTotal1Click(Sender: TObject);
begin
  DM.TManutencao.Open;
  if DM.TManutencao.RecordCount = 0 then
begin
  DM.TManutencao.Close;
  Application.MessageBox('Ficha Manutenção da Empresa não informada, é necessário informa-lá!', 'Informação', mb_Ok + mb_IconInformation);
  Application.CreateForm (TfrmManutencao, frmManutencao);
  frmManutencao.Show;
  end
  else
begin
  DM.TEntradaMiolo.Open;
  if DM.TEntradaMiolo.RecordCount = 0 then
  begin
  DM.TEntradaMiolo.Close;
  Application.MessageBox('Não há lançamentos de Entrada de Capa para execução deste procedimento!', 'Informação', mb_Ok + mb_IconInformation);
  end;
  end;

  if (DM.TManutencao.RecordCount <> 0) and (DM.TEntradaMiolo.RecordCount <> 0) then
begin
  DM.TEntradaMiolo.Close;
  Application.CreateForm (TfrmSelecaoImpressao2, frmSelecaoImpressao2);
  frmSelecaoImpressao2.Show;
end;
end;

procedure TfrmPrincipal.MioloDetalhado1Click(Sender: TObject);
begin
  DM.TManutencao.Open;
  if DM.TManutencao.RecordCount = 0 then
begin
  DM.TManutencao.Close;
  Application.MessageBox('Ficha Manutenção da Empresa não informada, é necessário informa-lá!', 'Informação', mb_Ok + mb_IconInformation);
  Application.CreateForm (TfrmManutencao, frmManutencao);
  frmManutencao.Show;
  end
  else
begin
  DM.TEntradaMiolo.Open;
  if DM.TEntradaMiolo.RecordCount = 0 then
  begin
  DM.TEntradaMiolo.Close;
  Application.MessageBox('Não há lançamentos de Entrada de Capa para execução deste procedimento!', 'Informação', mb_Ok + mb_IconInformation);
  end;
  end;

  if (DM.TManutencao.RecordCount <> 0) and (DM.TEntradaMiolo.RecordCount <> 0) then
begin
  DM.TEntradaMiolo.Close;
  Application.CreateForm (TfrmSelecaoImpressao3, frmSelecaoImpressao3);
  frmSelecaoImpressao3.Show;
end;
end;

procedure TfrmPrincipal.Miolo2Click(Sender: TObject);
begin
  DM.QEssencia.Open;
  if DM.QEssencia.RecordCount = 0 then
begin
  DM.QEssencia.Close;
  Application.MessageBox('Essencia deve ser informada para preenchimento desta ficha!', 'Informação', mb_Ok + mb_IconInformation);
  Application.CreateForm (TfrmEssencia, frmEssencia);
  frmEssencia.Show;
  end
  else
begin
  DM.QFornecedor.Open;
  if DM.QFornecedor.RecordCount = 0 then
  begin
  DM.QFornecedor.Close;
  Application.MessageBox('Fornecedor deve ser informado para preenchimento desta ficha!', 'Informação', mb_Ok + mb_IconInformation);
  Application.CreateForm (TfrmFornecedores, frmFornecedores);
  frmFornecedores.Show;
  end;
  end;

if (DM.QEssencia.RecordCount <> 0 ) and (DM.QFornecedor.RecordCount <> 0 ) then
begin
Application.CreateForm (TfrmEntradaMiolo, frmEntradaMiolo);
frmEntradaMiolo.Show;
end;
end;

procedure TfrmPrincipal.GravarClick(Sender: TObject);
begin
if fileexists('C:\Arquivos de programas\HF-Software\Contesto\Backup.exe') then
begin
ExecutePrograma('C:\Arquivos de programas\HF-Software\Contesto\Backup.exe','');
end
else
Application.MessageBox('Erro, arquivo "Backup.exe" não encontrado, entre em contado com o Administrador do Sistema!', 'Informação', mb_Ok + mb_IconError);
end;

procedure TfrmPrincipal.N3Click(Sender: TObject);
begin
frmSobre.ShowModal;
end;

procedure TfrmPrincipal.Anotaes1Click(Sender: TObject);
begin
Application.CreateForm (TfrmAnotacoes, frmAnotacoes);
frmAnotacoes.Show;
end;

procedure TfrmPrincipal.Calendario1Click(Sender: TObject);
begin
Application.CreateForm (TfrmCalendario, frmCalendario);
frmCalendario.Show;
end;

procedure TfrmPrincipal.Calculadora1Click(Sender: TObject);
begin
Application.CreateForm (TCalculator, Calculator);
Calculator.Show;
end;

procedure TfrmPrincipal.EntradadeCapa1Click(Sender: TObject);
begin
  DM.TEntradaCapa.Open;
  if DM.TEntradaCapa.RecordCount = 0 then
begin
  DM.TEntradaCapa.Close;
  Application.MessageBox('Não há lançamentos de Entrada de Capa para geração do Gráfico!', 'Informação', mb_Ok + mb_IconInformation);
  end;

  if (DM.TEntradaCapa.RecordCount <> 0) then
begin
  DM.TEntradaCapa.Close;
  Application.CreateForm (TfrmGraficoCapa, frmGraficoCapa);
  frmGraficoCapa.Show;
  end;
end;

procedure TfrmPrincipal.otal1Click(Sender: TObject);
begin
  DM.TManutencao.Open;
  if DM.TManutencao.RecordCount = 0 then
begin
  DM.TManutencao.Close;
  Application.MessageBox('Ficha Manutenção da Empresa não informada, é necessário informa-lá!', 'Informação', mb_Ok + mb_IconInformation);
  Application.CreateForm (TfrmManutencao, frmManutencao);
  frmManutencao.Show;
  end
  else
begin
  DM.TEntradaCapa.Open;
  if DM.TEntradaCapa.RecordCount = 0 then
  begin
  DM.TEntradaCapa.Close;
  Application.MessageBox('Não há lançamentos de Entrada de Capa para execução deste procedimento!', 'Informação', mb_Ok + mb_IconInformation);
  end;
  end;

  if (DM.TManutencao.RecordCount <> 0) and (DM.TEntradaCapa.RecordCount <> 0) then
begin
DM.TEntradaCapa.Close;
Application.CreateForm (TfrmSelecaoImpressao4, frmSelecaoImpressao4);
frmSelecaoImpressao4.Show;
end;
end;

procedure TfrmPrincipal.otalporEssencia1Click(Sender: TObject);
begin
  DM.TManutencao.Open;
  if DM.TManutencao.RecordCount = 0 then
begin
  DM.TManutencao.Close;
  Application.MessageBox('Ficha Manutenção da Empresa não informada, é necessário informa-lá!', 'Informação', mb_Ok + mb_IconInformation);
  Application.CreateForm (TfrmManutencao, frmManutencao);
  frmManutencao.Show;
  end
  else
begin
  DM.TEntradaCapa.Open;
  if DM.TEntradaCapa.RecordCount = 0 then
  begin
  DM.TEntradaCapa.Close;
  Application.MessageBox('Não há lançamentos de Entrada de Capa para execução deste procedimento!', 'Informação', mb_Ok + mb_IconInformation);
  end;
  end;

  if (DM.TManutencao.RecordCount <> 0) and (DM.TEntradaCapa.RecordCount <> 0) then
begin
DM.TEntradaCapa.Close;
Application.CreateForm (TfrmSelecaoImpressao5, frmSelecaoImpressao5);
frmSelecaoImpressao5.Show;
end;
end;

procedure TfrmPrincipal.EntradaMiolo1Click(Sender: TObject);
begin
  DM.TEntradaMiolo.Open;
  if DM.TEntradaMiolo.RecordCount = 0 then
begin
  DM.TEntradaMiolo.Close;
  Application.MessageBox('Não há lançamentos de Entrada de Miolo para geração do Gráfico!', 'Informação', mb_Ok + mb_IconInformation);
  end;

  if (DM.TEntradaMiolo.RecordCount <> 0) then
begin
  DM.TEntradaMiolo.Close;
  Application.CreateForm (TfrmGraficoMiolo, frmGraficoMiolo);
  frmGraficoMiolo.Show;
  end;
end;

procedure TfrmPrincipal.otalporPerodo1Click(Sender: TObject);
begin
  DM.TManutencao.Open;
  if DM.TManutencao.RecordCount = 0 then
begin
  DM.TManutencao.Close;
  Application.MessageBox('Ficha Manutenção da Empresa não informada, é necessário informa-lá!', 'Informação', mb_Ok + mb_IconInformation);
  Application.CreateForm (TfrmManutencao, frmManutencao);
  frmManutencao.Show;
  end
  else
begin
  DM.TEntradaMiolo.Open;
  if DM.TEntradaMiolo.RecordCount = 0 then
  begin
  DM.TEntradaMiolo.Close;
  Application.MessageBox('Não há lançamentos de Entrada de Capa para execução deste procedimento!', 'Informação', mb_Ok + mb_IconInformation);
  end;
  end;

  if (DM.TManutencao.RecordCount <> 0) and (DM.TEntradaMiolo.RecordCount <> 0) then
begin
  DM.TEntradaMiolo.Close;
  Application.CreateForm (TfrmSelecaoImpressao6, frmSelecaoImpressao6);
  frmSelecaoImpressao6.Show;
end;
end;

procedure TfrmPrincipal.otalporEssncia1Click(Sender: TObject);
begin
  DM.TManutencao.Open;
  if DM.TManutencao.RecordCount = 0 then
begin
  DM.TManutencao.Close;
  Application.MessageBox('Ficha Manutenção da Empresa não informada, é necessário informa-lá!', 'Informação', mb_Ok + mb_IconInformation);
  Application.CreateForm (TfrmManutencao, frmManutencao);
  frmManutencao.Show;
  end
  else
begin
  DM.TEntradaMiolo.Open;
  if DM.TEntradaMiolo.RecordCount = 0 then
  begin
  DM.TEntradaMiolo.Close;
  Application.MessageBox('Não há lançamentos de Entrada de Capa para execução deste procedimento!', 'Informação', mb_Ok + mb_IconInformation);
  end;
  end;

  if (DM.TManutencao.RecordCount <> 0) and (DM.TEntradaMiolo.RecordCount <> 0) then
begin
  DM.TEntradaMiolo.Close;
  Application.CreateForm (TfrmSelecaoImpressao7, frmSelecaoImpressao7);
  frmSelecaoImpressao7.Show;
end;
end;


procedure TfrmPrincipal.FormActivate(Sender: TObject);
begin
ValidarBasedeDados;
end;

procedure TfrmPrincipal.EvOneInstance1Duplicated(Sender: TObject;
  PrevInstance: Cardinal);
begin
Application.MessageBox('O sistema que você esta tentando executar já esta em uso, Verefique!', 'Informação', mb_Ok + mb_IconExclamation);
Application.Terminate;
end;

procedure TfrmPrincipal.ProduoCompensado1Click(Sender: TObject);
BEGIN
  DM.QEssencia.Open;
  if DM.QEssencia.RecordCount = 0 then
begin
  DM.QEssencia.Close;
  Application.MessageBox('Essencia deve ser informada para preenchimento desta ficha!', 'Informação', mb_Ok + mb_IconInformation);
  Application.CreateForm (TfrmEssencia, frmEssencia);
  frmEssencia.Show;
  end;

if (DM.QEssencia.RecordCount <> 0 ) then
begin
  Application.CreateForm (TfrmProducaoChapa, frmProducaoChapa);
  frmProducaoChapa.Show;
end;
end;

procedure TfrmPrincipal.Fornecedores2Click(Sender: TObject);
begin
  DM.TFornecedor.Close;
  DM.TFornecedor.Open;
  if DM.TFornecedor.RecordCount = 0 then
begin
  DM.TFornecedor.Close;
  Application.MessageBox('Não há fornecedor(es) cadastrado(s)!', 'Informação', mb_Ok + mb_IconInformation);
  end
  else
begin
  DM.TFornecedor.Close;
  DM.TFornecedor.Open;
  if DM.TFornecedor.RecordCount <> 0 then
begin
DM.TFornecedor.Close;
DM.QManutencao.Open;
with DM.QFornecedor do
  	begin
               Close;
               SQL.Clear;
               SQL.Add('Select * from Fornecedor Order by NOMEFORNECEDOR');
               Open;
               RepFornecedores.QuickRep1.Preview;
    end
end;
end;
end;

procedure TfrmPrincipal.Essencia1Click(Sender: TObject);
begin
  DM.QEssencia.Close;
  DM.QEssencia.Open;
  if DM.QEssencia.RecordCount = 0 then
begin
  DM.QEssencia.Close;
  Application.MessageBox('Não há Essência cadastrada!', 'Informação', mb_Ok + mb_IconInformation);
  end
  else
begin
  DM.QEssencia.Close;
  DM.QEssencia.Open;
  if DM.QEssencia.RecordCount <> 0 then
begin
DM.QManutencao.Close;
DM.QManutencao.Open;
with DM.QEssencia do
  	begin
               Close;
               SQL.Clear;
               SQL.Add('Select * from Essencia Order by ESSENCIA');
               Open;
               RepEssencia.QuickRep1.Preview;
    end
end;
end;
end;

procedure TfrmPrincipal.Creedores2Click(Sender: TObject);
begin
  Application.CreateForm (TfrmCredor, frmCredor);
  frmCredor.Show;
end;

procedure TfrmPrincipal.Creedores1Click(Sender: TObject);
begin
  DM.TCredor.Close;
  DM.TCredor.Open;
  if DM.TCredor.RecordCount = 0 then
begin
  DM.TCredor.Close;
  Application.MessageBox('Não há Cliente(s) cadastrado(s)!', 'Informação', mb_Ok + mb_IconInformation);
  end
  else
begin
  DM.TCredor.Close;
  DM.TCredor.Open;
  if DM.TCredor.RecordCount <> 0 then
begin
DM.TCredor.Close;
DM.QCredor.Open;
with DM.QCredor do
  	begin
               Close;
               SQL.Clear;
               SQL.Add('Select * from CREDOR Order by NOMECREDOR');
               Open;
               RepCredores.QuickRep1.Preview;
    end
end;
end;
end;

procedure TfrmPrincipal.VendadeCompensado1Click(Sender: TObject);
begin
  DM.QCredor.Open;
  if DM.QCredor.RecordCount = 0 then
begin
  DM.QCredor.Close;
  Application.MessageBox('Cliente deve ser informado para preenchimento desta ficha!', 'Informação', mb_Ok + mb_IconInformation);
  Application.CreateForm (TfrmCredor, frmCredor);
  frmCredor.Show;
end
else
begin
  DM.QProducao.Open;
  if DM.QProducao.RecordCount = 0 then
begin
  DM.QProducao.Close;
  Application.MessageBox('Não hà lançamento de Produção de Compensado!', 'Informação', mb_Ok + mb_IconInformation);
  end;
  end;

if (DM.QCredor.RecordCount <> 0 ) and (DM.QProducao.RecordCount <> 0) then
begin
Application.CreateForm (TfrmVendas, frmVendas);
frmVendas.Show;
end;
end;

procedure TfrmPrincipal.EmpresaDetalhada1Click(Sender: TObject);
begin
  DM.TManutencao.Close;
  DM.TManutencao.Open;
  if DM.TManutencao.RecordCount = 0 then
begin
  DM.TManutencao.Close;
  Application.MessageBox('Ficha Manutenção da Empresa não informada, é necessário informa-lá!', 'Informação', mb_Ok + mb_IconInformation);
  Application.CreateForm (TfrmManutencao, frmManutencao);
  frmManutencao.Show;
  end
  else
begin
  DM.TVenda.Close;
  DM.TVenda.Open;
  if DM.TVenda.RecordCount = 0 then
  begin
  DM.TVenda.Close;
  Application.MessageBox('Não há lançamentos de Vendas para execução deste procedimento!', 'Informação', mb_Ok + mb_IconInformation);
  end;
  end;

  if (DM.TManutencao.RecordCount <> 0) and (DM.TVENDA.RecordCount <> 0) then
begin
  DM.TVENDA.Close;
  Application.CreateForm (TfrmSelecaoImpressao9, frmSelecaoImpressao9);
  frmSelecaoImpressao9.Show;
end;
end;

procedure TfrmPrincipal.otal2Click(Sender: TObject);
begin
  DM.TManutencao.Close;
  DM.TManutencao.Open;
  if DM.TManutencao.RecordCount = 0 then
begin
  DM.TManutencao.Close;
  Application.MessageBox('Ficha Manutenção da Empresa não informada, é necessário informa-lá!', 'Informação', mb_Ok + mb_IconInformation);
  Application.CreateForm (TfrmManutencao, frmManutencao);
  frmManutencao.Show;
  end
  else
begin
  DM.TVenda.Close;
  DM.TVenda.Open;
  if DM.TVenda.RecordCount = 0 then
  begin
  DM.TVenda.Close;
  Application.MessageBox('Não há lançamentos de Vendas para execução deste procedimento!', 'Informação', mb_Ok + mb_IconInformation);
  end;
  end;

  if (DM.TManutencao.RecordCount <> 0) and (DM.TVENDA.RecordCount <> 0) then
begin
  DM.TVENDA.Close;
  RepVendas1.TVendas.Close;
  RepVendas1.TVendas.Open;
  RepVendas1.QuickRep1.Preview;
end;
end;

procedure TfrmPrincipal.ToolButton30Click(Sender: TObject);
begin
     if Application.MessageBox ('Confirma saida do sistema?','Confirmação', mb_YesNo +
     MB_ICONQUESTION) = idYes then
     begin
     DM.IBDatabase1.Connected := False; 
     Application.Terminate;
     end
     else
end;

procedure TfrmPrincipal.Estoque2Click(Sender: TObject);
begin
  DM.QEssencia.Close;
  DM.QEssencia.Open;
  if DM.QEssencia.RecordCount = 0 then
begin
  DM.QEssencia.Close;
  Application.MessageBox('Essencia deve ser informada para vizualização desta ficha!', 'Informação', mb_Ok + mb_IconInformation);
  Application.CreateForm (TfrmEssencia, frmEssencia);
  frmEssencia.Show;
  end;

if (DM.QEssencia.RecordCount <> 0 ) then
begin
  Application.CreateForm (TfrmConsulta, frmConsulta);
  frmConsulta.Show;
end;
end;

procedure TfrmPrincipal.Capa3Click(Sender: TObject);
begin
  DM.QEssencia.Open;
  if DM.QEssencia.RecordCount = 0 then
begin
  DM.QEssencia.Close;
  Application.MessageBox('Essência deve ser informada para preenchimento desta ficha!', 'Informação', mb_Ok + mb_IconInformation);
  Application.CreateForm (TfrmEssencia, frmEssencia);
  frmEssencia.Show;
  end;

if (DM.QEssencia.RecordCount <> 0 ) then
begin
Application.MessageBox('Lembre-se de que esta ficha é única e exclusivamente '+
'para lançar o Saldo Inicial do Estoque existente até a presente data, em '+
'hipótse alguma altere os valores além do estoque que deveria ter cido lançado, '+
'pois se fizer isto, o calculo do Estoque daqui por diante, será calculado incorretamente, '+
'para um melhor entendimento, consulte o item ESTOQUE INICIAL, localizado no menu SOBRE!', 'Informação', mb_Ok + mb_IconExclamation);
Application.CreateForm(TfrmSaldoCapa, frmSaldoCapa);
frmSaldoCapa.Show;
end;
end;

procedure TfrmPrincipal.Miolo3Click(Sender: TObject);

begin
  DM.QEssencia.Open;
  if DM.QEssencia.RecordCount = 0 then
begin
  DM.QEssencia.Close;
  Application.MessageBox('Essência deve ser informada para preenchimento desta ficha!', 'Informação', mb_Ok + mb_IconInformation);
  Application.CreateForm (TfrmEssencia, frmEssencia);
  frmEssencia.Show;
  end;

if (DM.QEssencia.RecordCount <> 0 ) then
begin
Application.MessageBox('Lembre-se de que esta ficha é única e exclusivamente '+
'para lançar o Saldo Inicial do Estoque existente até a presente data, em '+
'hipótse alguma altere os valores além do estoque que deveria ter cido lançado, '+
'pois se fizer isto, o calculo do Estoque daqui por diante, será calculado incorretamente, '+
'para um melhor entendimento, consulte o item ESTOQUE INICIAL, localizado no menu SOBRE!', 'Informação', mb_Ok + mb_IconExclamation);
Application.CreateForm(TfrmSaldoMiolo, frmSaldoMiolo);
frmSaldoMiolo.Show;
end;
end;


procedure TfrmPrincipal.ProduoCompensados1Click(Sender: TObject);
begin
  DM.QManutencao.Close;
  DM.QManutencao.Open;
  if DM.QManutencao.RecordCount = 0 then
begin
  DM.QManutencao.Close;
  Application.MessageBox('Ficha Manutenção da Empresa não informada, é necessário informa-lá!', 'Informação', mb_Ok + mb_IconInformation);
  Application.CreateForm (TfrmManutencao, frmManutencao);
  frmManutencao.Show;
  end
  else
begin
  DM.QProducao.Close;
  DM.QProducao.Open;
  if DM.QProducao.RecordCount = 0 then
  begin
  DM.QProducao.Close;
  Application.MessageBox('Não há lançamentos de Produção para execução deste procedimento!', 'Informação', mb_Ok + mb_IconInformation);
  end;
  end;

  if (DM.QManutencao.RecordCount <> 0) and (DM.QProducao.RecordCount <> 0) then
begin
  DM.QProducao.Close;
  Application.CreateForm (TfrmSelecaoImpressao10, frmSelecaoImpressao10);
  frmSelecaoImpressao10.Show;
end;
end;

procedure TfrmPrincipal.ConsumodeCola1Click(Sender: TObject);
begin
  DM.QProducao.Close;
  DM.QProducao.Open;
  if DM.QProducao.RecordCount = 0 then
begin
  DM.QProducao.Close;
  Application.MessageBox('Não hà lançamento de Produção de Compensado para consulta de Gasto de Cola!', 'Informação', mb_Ok + mb_IconInformation);
  end;

if (DM.QProducao.RecordCount <> 0 ) then
begin
Application.CreateForm (TfrmConsultaCola, frmConsultaCola);
frmConsultaCola.Show;
end;
end;

procedure TfrmPrincipal.EstoqueInicial2Click(Sender: TObject);
begin
Application.CreateForm (TfrmSobreEstoque, frmSobreEstoque);
frmSobreEstoque.Show;
end;

procedure TfrmPrincipal.EnviaremailparaSuporte1Click(Sender: TObject);
var Mail: String;
begin
    Mail := 'mailto:hfinformatica@bol.com.br';
    ShellExecute(GetDesktopWindow,'open',pchar(Mail),nil,nil, sw_ShowNormal);

end;

procedure TfrmPrincipal.AcessoPaginadaHFnaInternet1Click(Sender: TObject);
begin
HlinkNavigateString(nil,'http://www.hfinformatica.net');
end;

procedure TfrmPrincipal.U1Click(Sender: TObject);
begin
frmInfo.ShowModal;
end;

procedure TfrmPrincipal.VereficarAtualizaes1Click(Sender: TObject);
begin
HlinkNavigateString(nil,'http://www.hfinformatica.net');
end;

procedure TfrmPrincipal.CapturarPatch(FCaption, FolderName: string);
var
  BrowseInfo: TBrowseInfo;
  ItemIDList: PItemIDList;
  ItemSelected : PItemIDList;
  NameBuffer: array[0..MAX_PATH] of Char;
  WindowList: Pointer;
  IniFile: TRegIniFile;
  Result: boolean;
begin
  // Função lógica que recebe dois parâmetros um para o rótulo da caixa de seleção de
  // diretório presente na unit ShlObj declarada acima e o outro por referência retorna
  // uma String com o diretório novo e a escreve na chave correspondente no Registro,
  // mas apenas se selecionar OK na caixa de seleção de diretório.
  itemIDList := nil;
  FillChar(BrowseInfo, SizeOf(BrowseInfo), 0);
  BrowseInfo.hwndOwner := Handle;
  BrowseInfo.pidlRoot := ItemIDList;
  BrowseInfo.pszDisplayName := NameBuffer;
  BrowseInfo.lpszTitle := PChar(FCaption);
  BrowseInfo.ulFlags := BIF_RETURNONLYFSDIRS;
  WindowList := DisableTaskWindows(0);
  try
    ItemSelected := SHBrowseForFolder(BrowseInfo);
    Result := ItemSelected <> nil;
  finally
    EnableTaskWindows(WindowList);
  end;

  if Result then
   begin
    SHGetPathFromIDList(ItemSelected,NameBuffer);
    FolderName := NameBuffer;
    try
      IniFile:=TRegIniFile.Create('Software\HF Softwares');
      IniFile.WriteString('Contesto','CaminhoDados',FolderName);
      ValidarBasedeDados;
    finally
      IniFile.Free;
    end;
   end;
  end;

procedure TfrmPrincipal.ConfigurarBancodeDados1Click(Sender: TObject);
var Patch: String;
begin
    DM.IBDatabase1.Connected := False;
    CapturarPatch('Para configurar o caminho da base de dados, basta localizar e selecionar a pasta "BancoDados" que esta localizada no diretório de instalção do sistema e clicar em Ok.',Patch);
end;

procedure TfrmPrincipal.CJVScrollLabel1Click(Sender: TObject);
begin
frmsobre.ShowModal;
end;

end.
