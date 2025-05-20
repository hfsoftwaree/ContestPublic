unit UnitGraficoMiolo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, ComCtrls, ExtCtrls, Buttons, DB, ADODB,
  EDateEd;

type
  TfrmGraficoMiolo = class(TForm)
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
  frmGraficoMiolo: TfrmGraficoMiolo;

implementation

uses UnitDM, UnitPrincipal, UnitDMRepEntradaCapa, UnitRepEntradaCapa,
  UnitRepEntradaCapaDetalhada, UnitRepEntradaMioloDetalhado,
  UnitGraficoEntradaCapa, UnitPesquisa, UnitDMGrafico,
  UnitGraficoEntradaMiolo;

{$R *.dfm}

procedure TfrmGraficoMiolo.BitBtn3Click(Sender: TObject);
begin
Close;
end;

procedure TfrmGraficoMiolo.FormShow(Sender: TObject);
begin
frmPrincipal.Enabled := False;;
bitbtn4.SetFocus;
Self.Tag := 1;
end;

procedure TfrmGraficoMiolo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
frmPrincipal.Enabled := True;
Self.Tag := 0;
Action := Cafree;
end;

procedure TfrmGraficoMiolo.BitBtn1Click(Sender: TObject);
begin
if Edit1.Text = '' then
begin
Application.MessageBox('Fornecedor deve ser informado!', 'Informação', mb_Ok + mb_IconInformation);
Bitbtn4.SetFocus;
end;

if (Edit1.Text <> '') then
begin
  DM.TEntradaMiolo.Filter := 'CODIGOFORNECEDOR = ''' + (Edit1.Text) +'''';
  DM.TEntradaMiolo.Filtered := True;
  DM.TEntradaMiolo.Open;
  if DM.TEntradaMiolo.RecordCount = 0 then
  begin
  Application.MessageBox('Empresa selecionada não possui lançamentos para geração do Gráfico!', 'Informação', mb_Ok + mb_IconInformation);
  DM.TEntradaMiolo.Filtered := False;
  DM.TEntradaMiolo.Close;
  bitbtn4.SetFocus;
  end
  else
  begin
  if DM.TEntradaMiolo.RecordCount <> 0 then
  begin
  Self.Close;
  Application.CreateForm(TfrmGraficoEntradaMiolo, frmGraficoEntradaMiolo);
  frmGraficoEntradaMiolo.Show;
  end;
  end;
  end;
end;

procedure TfrmGraficoMiolo.DBLookupComboBox11Click(Sender: TObject);
begin
Edit1.Text := DM.QFornecedor['CODIGOFORNECEDOR'];
end;

procedure TfrmGraficoMiolo.BitBtn4Click(Sender: TObject);
begin
Application.CreateForm(TfrmPesquisa, frmPesquisa);
frmPesquisa.Show;
end;

end.
