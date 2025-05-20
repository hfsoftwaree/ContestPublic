unit UnitPesquisa1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, Grids, DBGrids, DB, ADODB, DBCtrls,
  IBCustomDataSet, IBTable, Mask, EDBNum;

type
  TfrmPesquisa1 = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    DBGrid1: TDBGrid;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Bevel1: TBevel;
    GroupBox2: TGroupBox;
    ComboBox1: TComboBox;
    Panel2: TPanel;
    BitBtn3: TBitBtn;
    Label3: TLabel;
    Label2: TLabel;
    Label1: TLabel;
    DBComboBox1: TComboBox;
    DBComboBox2: TComboBox;
    DBComboBox3: TComboBox;
    QProducao: TIBTable;
    DataSource1: TDataSource;
    QProducaoCODIGOPRODUCAO: TIntegerField;
    QProducaoDIA: TIBStringField;
    QProducaoMES: TIBStringField;
    QProducaoANO: TIBStringField;
    QProducaoESSENCIA: TIBStringField;
    QProducaoQUANTIDADE: TFloatField;
    QProducaoCOMPRIMENTO: TFloatField;
    QProducaoLARGURA: TFloatField;
    QProducaoEXPESSURA: TFloatField;
    QProducaoTOTAL: TFloatField;
    QProducaoCOLA: TFloatField;
    TOTAL: TEvDBNumEdit;
    TPRODUCAO: TEvDBNumEdit;
    EENTRADAS: TEvDBNumEdit;
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPesquisa1: TfrmPesquisa1;

implementation

uses UnitDM, UnitPrincipal, UnitSelecaoImpressaoCapa,
  UnitSelecaoImpressaoCapa1, UnitSelecaoImpressaoMiolo,
  UnitSelecaoImpressaoMiolo1, UnitGraficoCapa, UnitEntradaCapa, UnitMiolo,
  UnitGraficoMiolo, UnitProducaoChapa;

{$R *.dfm}

procedure TfrmPesquisa1.BitBtn2Click(Sender: TObject);
begin
frmProducaoChapa.Tag := 0;
QProducao.Filtered := False;
QProducao.Close;
DM.TEssencia.Close;
Close;
end;

procedure TfrmPesquisa1.FormShow(Sender: TObject);
begin
DM.TProducao.Close;
frmProducaoChapa.Enabled := False;
DBComboBox1.SetFocus;
end;

procedure TfrmPesquisa1.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
frmProducaoChapa.Enabled := True;
Action := Cafree;
end;

procedure TfrmPesquisa1.BitBtn1Click(Sender: TObject);
begin
if frmProducaoChapa.Tag = 2 then
begin
  DM.TProducao.Filtered := False;
  DM.TProducao.Close;
  DM.TProducao.Filter := 'CODIGOPRODUCAO = ''' + (DBGrid1.Columns.Items[0].Field.Text) + '''';
  DM.TProducao.Filtered := True;
  DM.TProducao.Open;
  DM.TProducao.Edit;
  DM.QEssencia.Open;

DM.TEssencia.Open;
DM.TEssencia.Locate('ESSENCIA',DBGrid1.Columns.Items[1].Field.Text,[lopartialkey,locaseinsensitive]);
DM.TEssencia.Edit;
DM.TEssencia['EENTRADAS']:= EENTRADAS.Value + TOTAL.Value;
DM.TEssencia['TPRODUCAO']:= TPRODUCAO.Value - TOTAL.Value;
DM.TEssencia.Post;
DM.TEssencia.Refresh;

  Close;
  frmProducaoChapa.Panel2.Enabled := False;
  frmProducaoChapa.Panel3.Enabled := True;
  frmProducaoChapa.DBLookupComboBox1.SetFocus;
  end;

if frmProducaoChapa.Tag = 3 then
begin
if Application.MessageBox ('Ao confirmar a exclusão deste lançamento'+
' o "Total do Estoque" será automaticamente estornado, Confirma Exclusão?','Confirmação', mb_YesNo +
MB_ICONQUESTION) = idYes then
begin
DM.TEssencia.Open;
DM.TEssencia.Locate('ESSENCIA',DBGrid1.Columns.Items[1].Field.Text,[lopartialkey,locaseinsensitive]);
DM.TEssencia.Edit;
DM.TEssencia['EENTRADAS']:= EENTRADAS.Value + TOTAL.Value;
DM.TEssencia['TPRODUCAO']:= TPRODUCAO.Value - TOTAL.Value;
DM.TEssencia.Post;
DM.TEssencia.Refresh;

      QProducao.Delete;
      QProducao.Refresh;
      Panel2.Caption := '' + intTostr(QProducao.RecordCount);
      if QProducao.RecordCount = 0 then
      GroupBox2.Enabled := False;
      bitbtn1.Enabled := false;
      end
      else
      end;
end;

procedure TfrmPesquisa1.ComboBox1Change(Sender: TObject);
begin
if ComboBox1.ItemIndex = 0 then
begin
QProducao.IndexFieldNames := 'CODIGOPRODUCAO';
end;

begin
if ComboBox1.ItemIndex = 1 then
begin
QProducao.IndexFieldNames := 'ESSENCIA';
end;
end;
end;

procedure TfrmPesquisa1.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
   bitBtn1.Click;
end;

procedure TfrmPesquisa1.BitBtn3Click(Sender: TObject);
begin
if DBComboBox1.Text = '' then
begin
Application.MessageBox('Dia deve ser informado!', 'Período', mb_Ok + mb_IconInformation);
DBComboBox1.SetFocus;
end
else
begin
if DBComboBox2.Text = '' then
begin
Application.MessageBox('Mês deve ser informado!', 'Período', mb_Ok + mb_IconInformation);
DBComboBox2.SetFocus;
end
else
begin
if DBComboBox3.Text = '' then
begin
Application.MessageBox('Ano deve ser informado!', 'Período', mb_Ok + mb_IconInformation);
DBComboBox3.SetFocus;
end;
end;
end;

if (DBComboBox1.Text <> '') and (DBComboBox2.Text <> '') and (DBComboBox3.Text <> '') then
begin
  QProducao.Filtered := False;
  QProducao.Close;
  QProducao.Filter := 'DIA = ''' + (DBComboBox1.Text) + ''' and MES = ''' +(DBComboBox2.Text) + ''' and ANO = ''' + (DBComboBox3.Text)+'''';
  QProducao.Filtered := True;
  QProducao.Open;
  QProducao.Refresh;
begin
if (QProducao.RecordCount <> 0) then
begin
Panel2.Caption := '' + intTostr(QProducao.RecordCount);
QProducao.IndexFieldNames := 'CODIGOPRODUCAO';
DBGrid1.SetFocus;
GroupBox2.Enabled := True;
BitBtn1.Enabled := True;
end
else
begin
QProducao.Filtered := False;
QProducao.Close;
GroupBox2.Enabled := False;
BitBtn1.Enabled := False;
Application.MessageBox('Período selecionado não possui Lançamentos!', 'Informação', mb_Ok + mb_IconInformation);
end
end
end
end;

end.
