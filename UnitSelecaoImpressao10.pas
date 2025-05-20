unit UnitSelecaoImpressao10;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, ComCtrls, ExtCtrls, Buttons, DB, ADODB,
  EDateEd, EKeyNav, IBCustomDataSet, IBTable;

type
  TfrmSelecaoImpressao10 = class(TForm)
    Panel1: TPanel;
    frmSelecaoCapaTotalPeriodo: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    RGGrafico: TRadioGroup;
    GroupBox2: TGroupBox;
    MES: TComboBox;
    ANO: TComboBox;
    Label3: TLabel;
    Label2: TLabel;
    DDIVISAO: TDataSource;
    TDIVISAO: TIBTable;
    TDIVISAODIAS: TFloatField;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    DBEdit1: TDBComboBox;
    Label4: TLabel;
    procedure BitBtn3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure frmSelecaoCapaTotalPeriodoClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSelecaoImpressao10: TfrmSelecaoImpressao10;

implementation

uses UnitDM, UnitPrincipal, UnitDMRepEntradaCapa, UnitRepEntradaCapa,
  UnitRepEntradaMioloDetalhado, UnitRepEntradaPeriodo,
  UnitRepEntradaCapaEssencia, UnitDMRelatorio, UnitRepCompensado;

{$R *.dfm}

procedure TfrmSelecaoImpressao10.BitBtn3Click(Sender: TObject);
begin
TDIVISAO.Close; 
Close;
end;

procedure TfrmSelecaoImpressao10.FormShow(Sender: TObject);
begin
frmPrincipal.Enabled := False;;
TDIVISAO.Open;
TDIVISAO.Edit;
end;

procedure TfrmSelecaoImpressao10.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
frmPrincipal.Enabled := True;
Action := Cafree;
end;

procedure TfrmSelecaoImpressao10.frmSelecaoCapaTotalPeriodoClick(Sender: TObject);
begin
if MES.Text = '' then
begin
Application.MessageBox('Mês deve ser informado!', 'Informação', mb_Ok + mb_IconInformation);
MES.SetFocus;
end
else
begin
if ANO.Text = '' then
begin
Application.MessageBox('Ano deve ser informado!', 'Informação', mb_Ok + mb_IconInformation);
ANO.SetFocus;
end
else
begin
if DBEdit1.Text = '' then
begin
Application.MessageBox('Numero de dias para calculo da Média diária da Produção deve ser informado!', 'Informação', mb_Ok + mb_IconInformation);
DBEdit1.SetFocus;
end;
end;
end;

if (MES.Text <> '') and (ANO.Text <> '')and (DBEdit1.Text <> '') then
begin
  TDIVISAO.Edit;
  TDIVISAO.Post;
  repCompensado.TPRODUCAO.Filtered:=False;
  repCompensado.TPRODUCAO.Close;
  repCompensado.TPRODUCAO.Filter := 'MES = ''' + (MES.Text) + ''' and ANO = ''' + (ANO.Text)+ '''';
  repCompensado.TPRODUCAO.Filtered:=True;
  repCompensado.TPRODUCAO.Open;
  DM.QManutencao.Open;
  if repCompensado.TPRODUCAO.RecordCount = 0 then
begin
repCompensado.TPRODUCAO.Filtered:=False;
repCompensado.TPRODUCAO.Close;
MES.SetFocus;
Application.MessageBox('Não há relatório(s) a ser(em) vizualizado(s) com o Período informado!', 'Informação', mb_Ok + mb_IconInformation);
end
else
begin
   case (RgGrafico.ItemIndex) of
     0: Begin
            RepCompensado.TDIVISAO.Open;
            RepCompensado.TDIVISAO.Refresh;
            repCompensado.TPRODUCAO.IndexFieldNames := ('DIA');
            repCompensado.PInicial.Caption := MES.Text;
            RepCompensado.PFinal.Caption := ANO.Text;
            repCompensado.QuickRep1.Preview;
        end;
     1: Begin
            RepCompensado.TDIVISAO.Open;
            RepCompensado.TDIVISAO.Refresh;
            repCompensado.TPRODUCAO.IndexFieldNames := ('ESSENCIA');
            repCompensado.PInicial.Caption := MES.Text;
            RepCompensado.PFinal.Caption := ANO.Text;
            repCompensado.QuickRep1.Preview;
        end;
end;
end;
end;
end;

procedure TfrmSelecaoImpressao10.BitBtn2Click(Sender: TObject);
begin
if MES.Text = '' then
begin
Application.MessageBox('Mês deve ser informado!', 'Informação', mb_Ok + mb_IconInformation);
MES.SetFocus;
end
else
begin
if ANO.Text = '' then
begin
Application.MessageBox('Ano deve ser informado!', 'Informação', mb_Ok + mb_IconInformation);
ANO.SetFocus;
end
else
begin
if DBEdit1.Text = '' then
begin
Application.MessageBox('Numero de dias para calculo da Média diária da Produção deve ser informado!', 'Informação', mb_Ok + mb_IconInformation);
DBEdit1.SetFocus;
end;
end;
end;

if (MES.Text <> '') and (ANO.Text <> '')and (DBEdit1.Text <> '') then
begin
  TDIVISAO.Edit;
  TDIVISAO.Post;
  repCompensado.TPRODUCAO.Filtered:=False;
  repCompensado.TPRODUCAO.Close;
  repCompensado.TPRODUCAO.Filter := 'MES = ''' + (MES.Text) + ''' and ANO = ''' + (ANO.Text)+ '''';
  repCompensado.TPRODUCAO.Filtered:=True;
  repCompensado.TPRODUCAO.Open;
  DM.QManutencao.Open;
  if repCompensado.TPRODUCAO.RecordCount = 0 then
begin
repCompensado.TPRODUCAO.Filtered:=False;
repCompensado.TPRODUCAO.Close;
MES.SetFocus;
Application.MessageBox('Não há relatório(s) a ser(em) vizualizado(s) com o Período informado!', 'Informação', mb_Ok + mb_IconInformation);
end
else
begin
   case (RgGrafico.ItemIndex) of
     0: Begin
            RepCompensado.TDIVISAO.Open;
            RepCompensado.TDIVISAO.Refresh;
            repCompensado.TPRODUCAO.IndexFieldNames := ('DIA');
            repCompensado.PInicial.Caption := MES.Text;
            RepCompensado.PFinal.Caption := ANO.Text;
            repCompensado.QuickRep1.PrinterSetup;
        end;
     1: Begin
            RepCompensado.TDIVISAO.Open;
            RepCompensado.TDIVISAO.Refresh;
            repCompensado.TPRODUCAO.IndexFieldNames := ('ESSENCIA');
            repCompensado.PInicial.Caption := MES.Text;
            RepCompensado.PFinal.Caption := ANO.Text;
            repCompensado.QuickRep1.PrinterSetup;
        end;
end;
end;
end;
end;

end.
