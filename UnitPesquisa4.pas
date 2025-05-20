unit UnitPesquisa4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, Grids, DBGrids, DB, ADODB;

type
  TfrmPesquisa4 = class(TForm)
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
  frmPesquisa4: TfrmPesquisa4;

implementation

uses UnitDM, UnitPrincipal, UnitSelecaoImpressaoCapa,
  UnitSelecaoImpressaoCapa1, UnitSelecaoImpressaoMiolo,
  UnitSelecaoImpressaoMiolo1, UnitGraficoCapa, UnitEntradaCapa, UnitMiolo,
  UnitGraficoMiolo, UnitSelecaoImpressao9;

{$R *.dfm}

procedure TfrmPesquisa4.BitBtn2Click(Sender: TObject);
begin
DM.QCredor.Close;
Close;
end;

procedure TfrmPesquisa4.Edit1Change(Sender: TObject);
begin
DM.QCredor.Locate('NOMECREDOR',Edit1.text,[lopartialkey,locaseinsensitive]);
end;

procedure TfrmPesquisa4.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
   bitBtn1.Click;
end;

procedure TfrmPesquisa4.FormShow(Sender: TObject);
begin
frmPrincipal.EvKeyNavigator1.Active := False;
DM.QCredor.Open;
Edit1.SetFocus;
Edit1.Clear;
Panel2.Caption := '' + intTostr(DM.QCredor.RecordCount);
with DM.QCredor do
  	begin
               Close;
               SQL.Clear;
               SQL.Add('Select * from Credor Order by NOMECREDOR');
               Open;
    end
end;

procedure TfrmPesquisa4.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action := Cafree;
frmPrincipal.EvKeyNavigator1.Active := True;
end;

procedure TfrmPesquisa4.BitBtn1Click(Sender: TObject);
begin
   if DM.QCredor.RecordCount <> 0 then
   begin
      frmSelecaoImpressao9.Edit1.Text := DM.QCredor['CODIGOCREDOR'];
      frmSelecaoImpressao9.DBLookupComboBox1.Text := DM.QCredor['NOMECREDOR'];
      DM.QCredor.Close;
      Close;
      frmSelecaoImpressao9.DataInicial1.SetFocus;
   end;
end;

procedure TfrmPesquisa4.ComboBox1Change(Sender: TObject);
begin
if ComboBox1.ItemIndex = 0 then
begin
    with DM.QCredor do
  	begin
               Close;
               SQL.Clear;
               SQL.Add('Select * from Credor Order by NOMECREDOR');
               Open;
               end;
               end;

begin
if ComboBox1.ItemIndex = 1 then
    begin
    with DM.QCredor do
  	begin
               Close;
               SQL.Clear;
               SQL.Add('Select * from Credor Order by CODIGOCREDOR');
               Open;
               end;
               end;
end;
end;

procedure TfrmPesquisa4.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
   bitBtn1.Click;
end;

end.
