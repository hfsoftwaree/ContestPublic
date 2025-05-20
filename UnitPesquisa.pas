unit UnitPesquisa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, Grids, DBGrids, DB, ADODB;

type
  TfrmPesquisa = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    Edit1: TEdit;
    DBGrid1: TDBGrid;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Bevel1: TBevel;
    GroupBox2: TGroupBox;
    ComboBox1: TComboBox;
    Panel2: TPanel;
    procedure BitBtn2Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPesquisa: TfrmPesquisa;

implementation

uses UnitDM, UnitPrincipal, UnitSelecaoImpressaoCapa,
  UnitSelecaoImpressaoCapa1, UnitSelecaoImpressaoMiolo,
  UnitSelecaoImpressaoMiolo1, UnitGraficoCapa, UnitEntradaCapa, UnitMiolo,
  UnitGraficoMiolo;

{$R *.dfm}

procedure TfrmPesquisa.BitBtn2Click(Sender: TObject);
begin
DM.QFornecedor.Close;
Close;
end;

procedure TfrmPesquisa.Edit1Change(Sender: TObject);
begin
DM.QFornecedor.Locate('NOMEFORNECEDOR',Edit1.text,[lopartialkey,locaseinsensitive]);
end;

procedure TfrmPesquisa.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
   bitBtn1.Click;
end;

procedure TfrmPesquisa.FormShow(Sender: TObject);
begin
frmPrincipal.EvKeyNavigator1.Active := False;
DM.QFornecedor.Open;
Edit1.SetFocus;
Edit1.Clear;
Panel2.Caption := '' + intTostr(DM.QFornecedor.RecordCount);
with DM.QFornecedor do
  	begin
               Close;
               SQL.Clear;
               SQL.Add('Select * from Fornecedor Order by NOMEFORNECEDOR');
               Open;
    end
end;

procedure TfrmPesquisa.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action := Cafree;
frmPrincipal.EvKeyNavigator1.Active := True;
end;

procedure TfrmPesquisa.BitBtn1Click(Sender: TObject);
begin
if frmSelecaoImpressao.Tag = 1 then
begin
   if DM.QFornecedor.RecordCount <> 0 then
   begin
      frmSelecaoImpressao.Edit1.Text := DM.QFornecedor['CODIGOFORNECEDOR'];
      frmSelecaoImpressao.DBLookupComboBox1.Text := DM.QFornecedor['NOMEFORNECEDOR'];
      DM.QFornecedor.Close;  
      Close;
      frmSelecaoImpressao.DataInicial1.SetFocus;
   end;
   end;

begin
if frmSelecaoImpressao1.Tag = 1 then
begin
   if DM.QFornecedor.RecordCount <> 0 then
   begin
      frmSelecaoImpressao1.Edit1.Text := DM.QFornecedor['CODIGOFORNECEDOR'];
      frmSelecaoImpressao1.DBLookupComboBox1.Text := DM.QFornecedor['NOMEFORNECEDOR'];
      Close;
      frmSelecaoImpressao1.DataInicial1.SetFocus;
   end;
   end;

if frmSelecaoImpressao2.Tag = 1 then
begin
   if DM.QFornecedor.RecordCount <> 0 then
   begin
      frmSelecaoImpressao2.Edit1.Text := DM.QFornecedor['CODIGOFORNECEDOR'];
      frmSelecaoImpressao2.DBLookupComboBox1.Text := DM.QFornecedor['NOMEFORNECEDOR'];
      Close;
      frmSelecaoImpressao2.DataInicial1.SetFocus;
   end;
   end;

if frmSelecaoImpressao3.Tag = 1 then
begin
   if DM.QFornecedor.RecordCount <> 0 then
   begin
      frmSelecaoImpressao3.Edit1.Text := DM.QFornecedor['CODIGOFORNECEDOR'];
      frmSelecaoImpressao3.DBLookupComboBox1.Text := DM.QFornecedor['NOMEFORNECEDOR'];
      Close;
      frmSelecaoImpressao3.DataInicial1.SetFocus;
   end;
   end;

if frmGraficoCapa.Tag = 1 then
begin
   if DM.QFornecedor.RecordCount <> 0 then
   begin
      frmGraficoCapa.Edit1.Text := DM.QFornecedor['CODIGOFORNECEDOR'];
      frmGraficoCapa.DBLookupComboBox1.Text := DM.QFornecedor['NOMEFORNECEDOR'];
      frmGraficoCapa.bitbtn1.SetFocus;
      Close;
   end;
   end;

if frmEntradaCapa.Tag = 1 then
begin
   if DM.QFornecedor.RecordCount <> 0 then
   begin
      frmEntradaCapa.DBLookupComboBox2.Text := DM.QFornecedor['NOMEFORNECEDOR'];
      frmEntradaCapa.DBEdit7.Text := DM.QFornecedor['CODIGOFORNECEDOR'];
      Close;
      frmEntradaCapa.MaskEdit1.SetFocus;
   end;
   end;

if frmEntradaMiolo.Tag = 1 then
begin
   if DM.QFornecedor.RecordCount <> 0 then
   begin
      frmEntradaMiolo.DBLookupComboBox2.Text := DM.QFornecedor['NOMEFORNECEDOR'];
      frmEntradaMiolo.DBEdit7.Text := DM.QFornecedor['CODIGOFORNECEDOR'];
      Close;
      frmEntradaMiolo.MaskEdit1.SetFocus;
   end;
   end;

if frmGraficoMiolo.Tag = 1 then
begin
   if DM.QFornecedor.RecordCount <> 0 then
   begin
      frmGraficoMiolo.Edit1.Text := DM.QFornecedor['CODIGOFORNECEDOR'];
      frmGraficoMiolo.DBLookupComboBox1.Text := DM.QFornecedor['NOMEFORNECEDOR'];
      frmGraficoMiolo.bitbtn1.SetFocus;
      Close;
   end;
   end;

end;
end;

procedure TfrmPesquisa.ComboBox1Change(Sender: TObject);
begin
if ComboBox1.ItemIndex = 0 then
begin
    with DM.QFornecedor do
  	begin
               Close;
               SQL.Clear;
               SQL.Add('Select * from Fornecedor Order by CODIGOFORNECEDOR');
               Open;
               end;
               end;

begin
if ComboBox1.ItemIndex = 1 then
    begin
    with DM.QFornecedor do
  	begin
               Close;
               SQL.Clear;
               SQL.Add('Select * from Fornecedor Order by NOMEFORNECEDOR');
               Open;
               end;
               end;
end;
end;

procedure TfrmPesquisa.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
   bitBtn1.Click;
end;

end.
