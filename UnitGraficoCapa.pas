unit UnitGraficoCapa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, ComCtrls, ExtCtrls, Buttons, DB, ADODB,
  EDateEd;

type
  TfrmGraficoCapa = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn3: TBitBtn;
    Bevel1: TBevel;
    GroupBox1: TGroupBox;
    DBLookupComboBox1: TEdit;
    Edit1: TEdit;
    BitBtn4: TBitBtn;
    procedure BitBtn3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure DBLookupComboBox11Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmGraficoCapa: TfrmGraficoCapa;

implementation

uses UnitDM, UnitPrincipal, UnitDMRepEntradaCapa, UnitRepEntradaCapa,
  UnitRepEntradaCapaDetalhada, UnitRepEntradaMioloDetalhado,
  UnitGraficoEntradaCapa, UnitPesquisa, UnitDMGrafico;

{$R *.dfm}

procedure TfrmGraficoCapa.BitBtn3Click(Sender: TObject);
begin
Close;
end;

procedure TfrmGraficoCapa.FormShow(Sender: TObject);
begin
frmPrincipal.Enabled := False;;
bitbtn4.SetFocus;
Self.Tag := 1;
end;

procedure TfrmGraficoCapa.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
frmPrincipal.Enabled := True;
Self.Tag := 0;
Action := Cafree;
end;

procedure TfrmGraficoCapa.BitBtn1Click(Sender: TObject);
begin
if Edit1.Text = '' then
begin
Application.MessageBox('Fornecedor deve ser informado!', 'Informação', mb_Ok + mb_IconInformation);
Bitbtn4.SetFocus;
end;

if (Edit1.Text <> '') then
begin
  DM.TEntradaCapa.Filter := 'CODIGOFORNECEDOR = ''' + (Edit1.Text) +'''';
  DM.TEntradaCapa.Filtered := True;
  DM.TEntradaCapa.Open;
  end;

if (DM.TEntradaCapa.RecordCount = 0) then
begin
  DM.TEntradaCapa.Filtered := False;
  DM.TEntradaCapa.Close;
  Application.MessageBox('Empresa selecionada não possui lançamentos para geração do Gráfico!', 'Informação', mb_Ok + mb_IconInformation);
  bitbtn4.SetFocus;
  end;

if (DM.TEntradaCapa.RecordCount <> 0) then
  begin
  Self.Close;
  Application.CreateForm(TfrmGraficoEntradaCapa, frmGraficoEntradaCapa);
  frmGraficoEntradaCapa.Show;
  end;
end;

procedure TfrmGraficoCapa.DBLookupComboBox11Click(Sender: TObject);
begin
Edit1.Text := DM.QFornecedor['CODIGOFORNECEDOR'];
end;

procedure TfrmGraficoCapa.BitBtn4Click(Sender: TObject);
begin
Application.CreateForm(TfrmPesquisa, frmPesquisa);
frmPesquisa.Show;
end;

end.
