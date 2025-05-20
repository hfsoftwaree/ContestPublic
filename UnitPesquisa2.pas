unit UnitPesquisa2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, Grids, DBGrids, DB, ADODB, DBCtrls,
  IBCustomDataSet, IBTable;

type
  TfrmPesquisa2 = class(TForm)
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Bevel1: TBevel;
    GroupBox2: TGroupBox;
    ComboBox1: TComboBox;
    Panel2: TPanel;
    QCredor: TIBTable;
    DataSource1: TDataSource;
    QCredorCODIGOCREDOR: TIntegerField;
    QCredorNOMECREDOR: TIBStringField;
    QCredorFANTASIA: TIBStringField;
    QCredorLOGRADOURO: TIBStringField;
    QCredorENDERECO: TIBStringField;
    QCredorNUMERO: TIBStringField;
    QCredorCEP: TIBStringField;
    QCredorBAIRRO: TIBStringField;
    QCredorCIDADE: TIBStringField;
    QCredorUF: TIBStringField;
    QCredorFONE: TIBStringField;
    QCredorFAX: TIBStringField;
    QCredorEMAIL: TIBStringField;
    QCredorWEB: TIBStringField;
    QCredorCONTATO: TIBStringField;
    QCredorCOMPLEMENTO: TIBStringField;
    QCredorCX: TIBStringField;
    GroupBox1: TGroupBox;
    Edit1: TEdit;
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1Change(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPesquisa2: TfrmPesquisa2;

implementation

uses UnitDM, UnitPrincipal, UnitSelecaoImpressaoCapa,
  UnitSelecaoImpressaoCapa1, UnitSelecaoImpressaoMiolo,
  UnitSelecaoImpressaoMiolo1, UnitGraficoCapa, UnitEntradaCapa, UnitMiolo,
  UnitGraficoMiolo, UnitProducaoChapa, UnitCredor;

{$R *.dfm}

procedure TfrmPesquisa2.BitBtn2Click(Sender: TObject);
begin
frmcredor.Tag := 0;
Qcredor.Close;
Close;
end;

procedure TfrmPesquisa2.FormShow(Sender: TObject);
begin
frmcredor.Enabled := False;
frmprincipal.EvKeyNavigator1.Active := False;
QCredor.Open;
QCredor.IndexFieldNames := 'NOMECREDOR';
Panel2.Caption := '' + intTostr(Qcredor.RecordCount);
end;

procedure TfrmPesquisa2.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
frmcredor.Enabled := True;
frmprincipal.EvKeyNavigator1.Active := True;
Action := Cafree;
end;

procedure TfrmPesquisa2.BitBtn1Click(Sender: TObject);
begin
if frmcredor.Tag = 2 then
begin
  DM.TCredor.Filtered := False;
  DM.TCredor.Close;
  DM.TCredor.Filter := 'CODIGOCREDOR = ''' + (DBGrid1.Columns.Items[0].Field.Text) + '''';
  DM.TCredor.Filtered := True;
  DM.TCredor.Open;
  DM.TCredor.Edit;
  Close;
  frmCredor.DBEdit2.SetFocus;
  end;

if frmcredor.Tag = 3 then
begin
If Application.MessageBox('Confirma Exclusão?', 'Confirmação',
mb_YesNo + mb_ICONQUESTION) = idYes then
begin
      QCredor.Delete;
      QCredor.Refresh;
      Panel2.Caption := '' + intTostr(Qcredor.RecordCount);
        if QCredor.RecordCount = 0 then
        begin
        GroupBox2.Enabled := False;
        bitbtn1.Enabled := false;
        end
        else
      end
      else
      end;
end;

procedure TfrmPesquisa2.ComboBox1Change(Sender: TObject);
begin
if ComboBox1.ItemIndex = 0 then
begin
Qcredor.IndexFieldNames := 'CODIGOCREDOR';
end;

begin
if ComboBox1.ItemIndex = 1 then
begin
Qcredor.IndexFieldNames := 'NOMECREDOR';
end;
end;
end;

procedure TfrmPesquisa2.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
   bitBtn1.Click;
end;

procedure TfrmPesquisa2.Edit1Change(Sender: TObject);
begin
QCredor.Locate('NOMECREDOR',Edit1.text,[lopartialkey,locaseinsensitive]);
end;

procedure TfrmPesquisa2.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
BitBtn1.Click
end;

end.
