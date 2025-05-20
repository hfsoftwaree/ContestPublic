unit UnitPesquisa3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, Grids, DBGrids, DB, ADODB, DBCtrls,
  IBCustomDataSet, IBTable, Mask, EDateEd, EDBNum;

type
  TfrmPesquisa3 = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    DBGrid1: TDBGrid;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Bevel1: TBevel;
    GroupBox2: TGroupBox;
    ComboBox1: TComboBox;
    Panel2: TPanel;
    DBLookupComboBox1: TDBLookupComboBox;
    Label2: TLabel;
    TVenda: TIBTable;
    DVenda: TDataSource;
    TVendaCODIGOVENDA: TIntegerField;
    TVendaCODIGOCREDOR: TIBStringField;
    TVendaNOMECREDOR: TIBStringField;
    TVendaDATAVENDA: TDateTimeField;
    TVendaESSENCIA: TIBStringField;
    TVendaQUANTIDADE: TFloatField;
    TVendaCOMPRIMENTO: TFloatField;
    TVendaLARGURA: TFloatField;
    TVendaEXPESSURA: TFloatField;
    TVendaVALORUNITARIO: TFloatField;
    TVendaTOTALM3: TFloatField;
    TVendaTOTALVENDA: TFloatField;
    Edit1: TEdit;
    TVENDAS: TEvDBNumEdit;
    EPRODUCAO: TEvDBNumEdit;
    TPRODUCAO: TEvDBNumEdit;
    TOTALVENDA: TEvDBNumEdit;
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBLookupComboBox1Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPesquisa3: TfrmPesquisa3;

implementation

uses UnitDM, UnitPrincipal, UnitSelecaoImpressaoCapa,
  UnitSelecaoImpressaoCapa1, UnitSelecaoImpressaoMiolo,
  UnitSelecaoImpressaoMiolo1, UnitGraficoCapa, UnitEntradaCapa, UnitMiolo,
  UnitGraficoMiolo, UnitProducaoChapa, UnitVendas, UnitSelecaoImpressao9;

{$R *.dfm}

procedure TfrmPesquisa3.BitBtn2Click(Sender: TObject);
begin
frmVendas.Tag := 0;
TVenda.Filtered := False;
TVenda.Close;
DM.TEssencia.Close; 
Close;
end;

procedure TfrmPesquisa3.FormShow(Sender: TObject);
begin
frmPrincipal.EvKeyNavigator1.Active := False;
DM.TVENDA.Close;
frmVendas.Enabled := False;
DM.QCredor.Open;
with DM.QCredor  do
  	begin
               Close;
               SQL.Clear;
               SQL.Add('Select * from Credor Order by NOMECREDOR');
               Open;
    end
end;

procedure TfrmPesquisa3.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
frmPrincipal.EvKeyNavigator1.Active := True;
frmVendas.Enabled := True;
Action := Cafree;
end;

procedure TfrmPesquisa3.BitBtn1Click(Sender: TObject);
begin
if frmVendas.Tag = 2 then
begin
  DM.TVenda.Filtered := False;
  DM.TVenda.Close;
  DM.TVenda.Filter := 'CODIGOVENDA = ''' + (DBGrid1.Columns.Items[0].Field.Text) + '''';
  DM.TVenda.Filtered := True;
  DM.TVenda.Open;
  DM.QEssencia.Open;
  DM.QCredor.Open;
  DM.TVenda.Edit;
DM.TEssencia.Open;
DM.TEssencia.Locate('ESSENCIA',DBGrid1.Columns.Items[2].Field.Text,[lopartialkey,locaseinsensitive]);
DM.TEssencia.Edit;
DM.TEssencia['EPRODUCAO']:= EPRODUCAO.Value + TOTALVENDA.Value;
DM.TEssencia['TVENDAS']:= TVENDAS.Value - TOTALVENDA.Value;
DM.TEssencia.Post;
DM.TEssencia.Refresh;


  Close;
  frmVendas.Panel2.Enabled := True;
  frmVendas.DBLookupComboBox1.SetFocus;
  end;

if frmVendas.Tag = 3 then
begin
if Application.MessageBox ('Ao confirmar a exclusão deste lançamento'+
' o "Total do Estoque" será automaticamente estornado, Confirma Exclusão?','Confirmação', mb_YesNo +
MB_ICONQUESTION) = idYes then
begin
DM.TEssencia.Open;
DM.TEssencia.Locate('ESSENCIA',DBGrid1.Columns.Items[2].Field.Text,[lopartialkey,locaseinsensitive]);
DM.TEssencia.Edit;
DM.TEssencia['EPRODUCAO']:= EPRODUCAO.Value + TOTALVENDA.Value;
DM.TEssencia['TVENDAS']:= TVENDAS.Value - TOTALVENDA.Value;
DM.TEssencia.Post;
DM.TEssencia.Refresh;

      TVenda.Delete;
      TVenda.Refresh;
      Panel2.Caption := '' + intTostr(TVenda.RecordCount);
      if TVenda.RecordCount = 0 then
      begin
      GroupBox2.Enabled := False;
      BitBtn1.Enabled := False;
      DM.TEssencia.Close;
      end
      else
      end;
      end;
end;

procedure TfrmPesquisa3.ComboBox1Change(Sender: TObject);
begin
if ComboBox1.ItemIndex = 0 then
begin
TVenda.IndexFieldNames := 'DATAVENDA';
end;

begin
if ComboBox1.ItemIndex = 1 then
begin
TVenda.IndexFieldNames := 'CODIGOVENDA';
end;
end;
end;

procedure TfrmPesquisa3.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
   bitBtn1.Click;
end;

procedure TfrmPesquisa3.DBLookupComboBox1Click(Sender: TObject);
begin
Edit1.Text := DM.QCredor['CODIGOCREDOR'];
TVenda.Filtered := False;
TVenda.Close;
TVenda.Filter := 'CODIGOCREDOR = ' + QuotedStr(Edit1.Text);
TVenda.Filtered:=True;
TVenda.Open;

if TVenda.RecordCount = 0 then
begin
GroupBox2.Enabled := False;
Panel2.Caption := '' + intTostr(TVenda.RecordCount);
BitBtn1.Enabled := False;
Application.MessageBox('Cliente Selecionado não possui lançamentos!', 'Pesquisa', mb_Ok + mb_IconInformation);
end
else
begin
if TVenda.RecordCount <> 0 then
begin
DBGrid1.SetFocus;
Panel2.Caption := '' + intTostr(TVenda.RecordCount);
GroupBox2.Enabled := True;
BitBtn1.Enabled := True;
end;
end;
end;


end.
