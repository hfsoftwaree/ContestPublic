unit UnitMiolo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, ExtCtrls, ComCtrls, ImgList, Buttons,
  Grids, DBGrids, DB, ADODB, EDateEd, EDBDate, EFocCol, EDBNum, EKeyNav,
  EZeroEd, EDBZero;

type
  TfrmEntradaMiolo = class(TForm)
    Panel1: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton9: TSpeedButton;
    SpeedButton11: TSpeedButton;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Panel3: TPanel;
    DBGrid1: TDBGrid;
    Panel4: TPanel;
    Label9: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    SpeedButton10: TSpeedButton;
    MaskEdit1: TEvDBDateEdit;
    DBEdit6: TEvDBNumEdit;
    DBEdit3: TEvDBNumEdit;
    DBEdit4: TEvDBNumEdit;
    DBEdit5: TEvDBNumEdit;
    DBEdit1: TEvDBNumEdit;
    DBEdit2: TEvDBZeroEdit;
    DBLookupComboBox2: TDBEdit;
    GroupBox1: TGroupBox;
    Label11: TLabel;
    RadioButton1: TRadioButton;
    RadioButton3: TRadioButton;
    Edit1: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn4: TBitBtn;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    TINICIALMIOLO: TEvDBNumEdit;
    Label10: TLabel;
    TOTAL3: TEvDBNumEdit;
    TPRODUCAO: TEvDBNumEdit;
    TINICIALCAPA: TEvDBNumEdit;
    SpeedButton3: TSpeedButton;
    procedure SpeedButton4Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure RadioButton1Enter(Sender: TObject);
    procedure RadioButton2Enter(Sender: TObject);
    procedure RadioButton3Enter(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton3Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn4Click(Sender: TObject);
    procedure DBEdit5Exit(Sender: TObject);
    procedure DBEdit6Exit(Sender: TObject);
    procedure DBEdit3Exit(Sender: TObject);
    procedure DBEdit4Exit(Sender: TObject);
    procedure DBLookupComboBox1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEntradaMiolo: TfrmEntradaMiolo;

implementation

uses UnitPrincipal, UnitDM, UnitPesquisa, UnitDMRelatorio, UnitCalculator;

{$R *.dfm}

procedure TfrmEntradaMiolo.SpeedButton4Click(Sender: TObject);
begin
frmPrincipal.EvKeyNavigator1.Active := True;
DM.TEntradaMiolo.Cancel;
DM.TEntradaMiolo.Close;
DM.QEssencia.Close;
DM.TEssencia.Close;
Close;
end;

procedure TfrmEntradaMiolo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Self.Tag := 0;
frmPrincipal.Enabled := True;
Action := CaFree;
end;


procedure TfrmEntradaMiolo.FormShow(Sender: TObject);
begin
frmPrincipal.Enabled := False;
Self.Tag := 1;
end;

procedure TfrmEntradaMiolo.SpeedButton9Click(Sender: TObject);
begin
Self.Tag := 1;
DM.TEssencia.Open;
TOTAL3.Text := '0.000';
SpeedButton9.Enabled := False;
SpeedButton10.Enabled := False;
SpeedButton11.Enabled := False;
DM.TEntradaMiolo.Open;
DM.TEntradaMiolo.IndexFieldNames := ('NOMEFORNECEDOR');
DM.TEntradaMiolo.Append;
DBGRid1.Enabled := False;
Panel2.Enabled := True;
bitbtn4.SetFocus;
SpeedButton1.Enabled := True;
SpeedButton2.Enabled := True;
with DM.QEssencia do
  	begin
               Close;
               SQL.Clear;
               SQL.Add('Select * from Essencia Order by ESSENCIA');
               Open;
    end
end;

procedure TfrmEntradaMiolo.SpeedButton11Click(Sender: TObject);
begin
  DM.TEntradaMiolo.Open;
  if DM.TEntradaMiolo.RecordCount = 0 then
begin
  DM.TEntradaMiolo.Close;
  Application.MessageBox('Não há lançamentos para serem excluidos!', 'Informação', mb_Ok + mb_IconInformation);
  end;

  if (DM.TEntradaMiolo.RecordCount <> 0) then
begin
Self.Tag := 3;
frmPrincipal.EvKeyNavigator1.Active := False;
DM.TEssencia.Open;
DM.TEssencia.Locate('ESSENCIA',DBLookupComboBox1.Text,[lopartialkey,locaseinsensitive]);
DM.TEntradaMiolo.Edit;
DM.QEssencia.Open;
SpeedButton1.Enabled := False;
SpeedButton2.Enabled := True;
SpeedButton9.Enabled := False;
SpeedButton10.Enabled := False;
SpeedButton11.Enabled := False;
SpeedButton5.Enabled := True;
SpeedButton6.Enabled := True;
SpeedButton7.Enabled := True;
SpeedButton8.Enabled := True;
MaskEdit1.Visible := False;
DBEdit6.Visible := False;
DBEdit2.Visible := False;
DBEdit3.Visible := False;
DBEdit4.Visible := False;
DBEdit5.Visible := False;
Panel2.Enabled := True;
GroupBox1.Visible := True;
Edit1.Clear;
Edit1.SetFocus;
Label11.Caption := 'Digite o critério selecionado para pesquisar o lançamento que deseja Excluir e tecle "ENTER"';
DBGrid1.Enabled := False;
end
end;

procedure TfrmEntradaMiolo.SpeedButton1Click(Sender: TObject);
begin
if DBLookupComboBox2.Text = '' then
  begin
  Application.MessageBox('Fornecedor deve ser informado!', 'Informação', mb_Ok + mb_IconInformation);
  bitbtn4.SetFocus;
  end
  else
begin
if MaskEdit1.Text = '' then
  begin
  Application.MessageBox('Data de Entrada deve ser informado!', 'Informação', mb_Ok + mb_IconInformation);
  MaskEdit1.SetFocus;
  end
  else
begin
if DBLookupComboBox1.Text = '' then
  begin
  Application.MessageBox('Essência deve ser informada!', 'Informação', mb_Ok + mb_IconInformation);
  DBLookupComboBox1.SetFocus;
  end
  else
begin
if DBEdit6.Text = '0,000' then
  begin
  Application.MessageBox('Quantidade deve ser informada!', 'Informação', mb_Ok + mb_IconInformation);
  DBEdit6.SetFocus;
  end
  else
begin
if DBEdit3.Text = '0,0' then
  begin
  Application.MessageBox('Expessura deve ser informada!', 'Informação', mb_Ok + mb_IconInformation);
  DBEdit3.SetFocus;
  end
  else
begin
if DBEdit4.Text = '0,00' then
  begin
  Application.MessageBox('Largura deve ser informada!', 'Informação', mb_Ok + mb_IconInformation);
  DBEdit4.SetFocus;
  end
  else
begin
if DBEdit5.Text = '0,00' then
  begin
  Application.MessageBox('Comprimento deve ser informado!', 'Informação', mb_Ok + mb_IconInformation);
  DBEdit5.SetFocus;
  end;
  end;
  end;
  end;
  end;
  end;
  end;

if (DBLookupCombobox2.Text <> '') and (MaskEdit1.Text <> '') and (DBLookupCombobox1.Text <> '') and (DBEdit6.Text <> '0,000') and (DBEdit3.Text <> '0,0') and (DBEdit4.Text <> '0,00') and (DBEdit5.Text <> '0,00') then
begin
    if Self.Tag = 1 then
    begin
    If Application.MessageBox('Confirma Inclusão deste Fornecedor?', 'Confirmação',
    mb_YesNo + mb_ICONQUESTION) = idYes then
      begin
      DM.TEssencia.Edit;
      DM.TEssencia['TINICIALMIOLO']:= TINICIALMIOLO.Value + DBEdit1.Value;
      DM.TEssencia['EENTRADAS']:= TINICIALCAPA.Value + TINICIALMIOLO.Value - TPRODUCAO.Value;
      DM.TEssencia.Post;
      DM.TEssencia.Refresh;

      DM.TEntradaMiolo.Post;
      DM.TEntradaMiolo.Refresh;
        If Application.MessageBox('Continua Lançamento?', 'Confirmação',
        mb_YesNo + mb_ICONQUESTION) = idYes then
        begin
        BitBtn4.SetFocus;
        DM.TEntradaMiolo.Append;
        end
        else
        begin
        DM.TEntradaMiolo.Close;
        DM.QEssencia.Close;
        DM.TEssencia.Close;  
        SpeedButton9.Enabled := True;
        SpeedButton10.Enabled := True;
        SpeedButton11.Enabled := True;
        SpeedButton1.Enabled := False;
        SpeedButton2.Enabled := False;
        BitBtn4.Enabled := True;
        Panel2.Enabled := False;
        end;
    end;
end;

    if Self.Tag = 2 then
    begin
    If Application.MessageBox('Confirma Alteração deste Fornecedor?', 'Confirmação',
    mb_YesNo + mb_ICONQUESTION) = idYes then
      begin
      DM.TEssencia.Edit;
      DM.TEssencia['TINICIALMIOLO']:= TINICIALMIOLO.Value + DBEdit1.Value;
      DM.TEssencia['EENTRADAS']:= TINICIALCAPA.Value + TINICIALMIOLO.Value - TPRODUCAO.Value;
      DM.TEssencia.Post;
      DM.TEssencia.Close;

      DM.TEntradaMiolo.Post;
      DM.TEntradaMiolo.Close;
      SpeedButton9.Enabled := True;
      SpeedButton10.Enabled := True;
      SpeedButton11.Enabled := True;
      SpeedButton1.Enabled := False;
      SpeedButton2.Enabled := False;
      BitBtn4.Enabled := True;
      Panel2.Enabled := False;
      end;
      end;
      end;
end;

procedure TfrmEntradaMiolo.Edit1Change(Sender: TObject);
begin
if RadioButton1.Checked = true then
begin
DM.TEntradaMiolo.Locate('NOMEFORNECEDOR',Edit1.text,[lopartialkey,locaseinsensitive]);
DM.QEssencia.Locate('ESSENCIA',DBGrid1.Columns.Items[4].Field.Text,[lopartialkey,locaseinsensitive]);
end
else
begin
if RadioButton3.Checked = true then
begin
DM.TEntradaMiolo.Locate('CONTROLE',Edit1.text,[lopartialkey,locaseinsensitive]);
DM.QEssencia.Locate('ESSENCIA',DBGrid1.Columns.Items[4].Field.Text,[lopartialkey,locaseinsensitive]);
end
end
end;

procedure TfrmEntradaMiolo.SpeedButton5Click(Sender: TObject);
begin
DM.TEntradaMiolo.First;
DM.TEssencia.Locate('ESSENCIA',DBGrid1.Columns.Items[4].Field.Text,[lopartialkey,locaseinsensitive]);
end;

procedure TfrmEntradaMiolo.SpeedButton6Click(Sender: TObject);
begin
DM.TEntradaMiolo.Prior;
DM.TEssencia.Locate('ESSENCIA',DBGrid1.Columns.Items[4].Field.Text,[lopartialkey,locaseinsensitive]);
end;

procedure TfrmEntradaMiolo.SpeedButton7Click(Sender: TObject);
begin
DM.TEntradaMiolo.Next;
DM.TEssencia.Locate('ESSENCIA',DBGrid1.Columns.Items[4].Field.Text,[lopartialkey,locaseinsensitive]);
end;

procedure TfrmEntradaMiolo.SpeedButton8Click(Sender: TObject);
begin
DM.TEntradaMiolo.Last;
DM.TEssencia.Locate('ESSENCIA',DBGrid1.Columns.Items[4].Field.Text,[lopartialkey,locaseinsensitive]);
end;

procedure TfrmEntradaMiolo.RadioButton1Enter(Sender: TObject);
begin
Edit1.SetFocus;
end;

procedure TfrmEntradaMiolo.RadioButton2Enter(Sender: TObject);
begin
Edit1.SetFocus;
end;

procedure TfrmEntradaMiolo.RadioButton3Enter(Sender: TObject);
begin
Edit1.SetFocus;
end;

procedure TfrmEntradaMiolo.RadioButton1Click(Sender: TObject);
begin
Edit1.Clear; 
Edit1.SetFocus;
end;

procedure TfrmEntradaMiolo.RadioButton3Click(Sender: TObject);
begin
Edit1.Clear;
Edit1.SetFocus;
end;

procedure TfrmEntradaMiolo.SpeedButton2Click(Sender: TObject);
begin
if Self.Tag = 1 then
begin
SpeedButton1.Enabled := False;
SpeedButton2.Enabled := False;
SpeedButton9.Enabled := True;
SpeedButton10.Enabled := True;
SpeedButton11.Enabled := True;
DBGrid1.Enabled := True;
DBGrid1.SetFocus;
Panel2.Enabled := False;
DM.TEntradaMiolo.Cancel;
DM.TEntradaMiolo.Close;
DM.QEssencia.Close;
DM.TEssencia.Close; 
end
else
begin
if Self.Tag = 2 then
begin
SpeedButton9.Enabled := True;
SpeedButton10.Enabled := True;
SpeedButton11.Enabled := True;
SpeedButton1.Enabled := False;
SpeedButton2.Enabled := False;
SpeedButton5.Enabled := False;
SpeedButton6.Enabled := False;
SpeedButton7.Enabled := False;
SpeedButton8.Enabled := False;
Edit1.Clear;
GroupBox1.Visible := False;
Panel2.Visible := True;
Panel2.Enabled := False;
DBEdit2.Visible := True;
DBEdit3.Visible := True;
DBEdit4.Visible := True;
DBEdit5.Visible := True;
DBEdit6.Visible := True;
MaskEdit1.Visible := True;
DM.TEntradaMiolo.Cancel;
DM.TEntradaMiolo.Close;
DM.QEssencia.Close;
DM.TEssencia.Close;
bitbtn4.Enabled := True;
end
else
begin
if Self.Tag = 3 then
begin
frmPrincipal.EvKeyNavigator1.Active := True;
DM.TEntradaMiolo.Cancel;
DM.TEntradaMiolo.Close;
DM.QEssencia.Close;
DM.TEssencia.Close;
SpeedButton9.Enabled := True;
SpeedButton10.Enabled := True;
SpeedButton11.Enabled := True;
SpeedButton1.Enabled := False;
SpeedButton2.Enabled := False;
SpeedButton5.Enabled := False;
SpeedButton6.Enabled := False;
SpeedButton7.Enabled := False;
SpeedButton8.Enabled := False;
GroupBox1.Visible := False;
Panel2.Visible := True;
Panel2.Enabled := False;
DBEdit2.Visible := True;
DBEdit3.Visible := True;
DBEdit4.Visible := True;
DBEdit5.Visible := True;
DBEdit6.Visible := True;
MaskEdit1.Visible := True;
end
end
end
end;


procedure TfrmEntradaMiolo.SpeedButton10Click(Sender: TObject);
begin
  DM.TEntradaMiolo.Open;
  if DM.TEntradaMiolo.RecordCount = 0 then
begin
  DM.TEntradaMiolo.Close;
  Application.MessageBox('Não há lançamentos para serem Alterados!', 'Informação', mb_Ok + mb_IconInformation);
  end;

  if (DM.TEntradaMiolo.RecordCount <> 0) then
begin
Self.Tag := 2;
frmPrincipal.EvKeyNavigator1.Active := False;
bitbtn4.Enabled := False;
DM.TEntradaMiolo.Edit;

  DM.TEssencia.Open;
  DM.TEssencia.Locate('ESSENCIA',DBGrid1.Columns.Items[4].Field.Text,[lopartialkey,locaseinsensitive]);
  DM.TEssencia.Edit;
  DM.TEssencia['EENTRADAS']:= TOTAL3.Value - DBEDIT1.Value;
  DM.TEssencia['TINICIALCAPA']:= TINICIALCAPA.Value - DBEdit1.Value;

DM.QEssencia.Open;
SpeedButton1.Enabled := False;
SpeedButton2.Enabled := True;
SpeedButton9.Enabled := False;
SpeedButton10.Enabled := False;
SpeedButton11.Enabled := False;
SpeedButton5.Enabled := True;
SpeedButton6.Enabled := True;
SpeedButton7.Enabled := True;
SpeedButton8.Enabled := True;
Panel2.Enabled := True;
GroupBox1.Visible := True;
Edit1.Clear;
Edit1.SetFocus;
Label11.Caption := 'Digite o critério selecionado para pesquisar o lançamento que deseja alterar e tecle "ESC"';
DBGrid1.Enabled := False;
end
end;

procedure TfrmEntradaMiolo.BitBtn1Click(Sender: TObject);
begin
if Self.Tag = 2 then
begin
SpeedButton1.Enabled := True;
SpeedButton5.Enabled := False;
SpeedButton6.Enabled := False;
SpeedButton7.Enabled := False;
SpeedButton8.Enabled := False;
Edit1.Clear;
GroupBox1.Visible := False;
Panel2.Visible := True;
MaskEdit1.SetFocus;
MaskEdit1.Visible := True;
DBEdit2.Visible := True;
DBEdit3.Visible := True;
DBEdit4.Visible := True;
DBEdit5.Visible := True;
DBEdit6.Visible := True;
DM.TEntradaMiolo.Edit;
frmPrincipal.EvKeyNavigator1.Active := True;
end
end;

procedure TfrmEntradaMiolo.BitBtn2Click(Sender: TObject);
begin
if Application.MessageBox ('Ao confirmar a exclusão deste lançamento'+
' o "Total M/3" do mesmo será automaticamente baixado no saldo em estoque existente, Confirma Exclusão?','Confirmação', mb_YesNo +
MB_ICONQUESTION) = idYes then
begin
DM.TEssencia.Open;
DM.TEssencia.Edit;
DM.TEssencia['TINICIALMIOLO']:= TINICIALMIOLO.Value - DBEdit1.Value;
DM.TEssencia['EENTRADAS']:= TINICIALCAPA.Value + TINICIALMIOLO.Value - TPRODUCAO.Value;
DM.TEssencia.Post;
DM.TEssencia.Refresh;
DM.TEntradaMiolo.Delete;
DM.TEntradaMiolo.Refresh;
DM.TEntradaMiolo.Edit;
Edit1.Clear;
Edit1.SetFocus;
if DM.TEntradaMiolo.RecordCount = 0 then
begin
frmPrincipal.EvKeyNavigator1.Active := True;
DM.TEntradaMiolo.Close;
DM.QEssencia.Close;
DM.TEssencia.Close;
SpeedButton9.Enabled := True;
SpeedButton10.Enabled := True;
SpeedButton11.Enabled := True;
SpeedButton1.Enabled := False;
SpeedButton2.Enabled := False;
SpeedButton5.Enabled := False;
SpeedButton6.Enabled := False;
SpeedButton7.Enabled := False;
SpeedButton8.Enabled := False;
GroupBox1.Visible := False;
Panel2.Visible := True;
Panel2.Enabled := False;
DBEdit2.Visible := True;
DBEdit3.Visible := True;
DBEdit4.Visible := True;
DBEdit5.Visible := True;
DBEdit6.Visible := True;
MaskEdit1.Visible := True;
end
else
begin
if DM.TEntradaMiolo.RecordCount <> 0 then
begin
Edit1.Clear;
Edit1.SetFocus;
end
end
end
end;

procedure TfrmEntradaMiolo.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
   bitBtn2.Click;
end;

procedure TfrmEntradaMiolo.BitBtn4Click(Sender: TObject);
begin
Application.CreateForm(TfrmPesquisa, frmPesquisa);
frmPesquisa.Show;
end;


procedure TfrmEntradaMiolo.DBEdit5Exit(Sender: TObject);
var vn1, vn2, vn3, vn4, vsoma: Real;
begin
if length (DBEdit5.Text) < 5 then
begin
      vn1:=0;
      vn2:=0;
      vn3:=0;
      vn4:=0;
      vsoma:=0;
      vn1:= StrToFloat(DBEdit6.Text);
      vn2:= StrToFloat(DBEdit3.Text);
      vn3:= StrToFloat(DBEdit4.Text);
      vn4:= StrToFloat(DBEdit5.Text);
      vsoma := vn1 * vn2 * vn3 * vn4;
      DBEdit1.Text := FloatToStr(vsoma);
      SpeedButton1.Click;
      exit;
end
else
Application.MessageBox('Comprimento invalido, Verefique!', 'Informação', mb_Ok + mb_IconInformation);
DBEdit5.SetFocus;
DBEdit5.Clear;
end;


procedure TfrmEntradaMiolo.DBEdit6Exit(Sender: TObject);
begin
if length (DBEdit6.Text) > 7 then
begin
Application.MessageBox('Quantidade invalida, Verefique!', 'Informação', mb_Ok + mb_IconInformation);
DBEdit6.SetFocus;
DBEdit6.Clear;
end
else
exit;
end;

procedure TfrmEntradaMiolo.DBEdit3Exit(Sender: TObject);
begin
if length (DBEdit3.Text) > 4 then
begin
Application.MessageBox('Expessura invalida, Verefique!', 'Informação', mb_Ok + mb_IconInformation);
DBEdit3.SetFocus;
DBEdit3.Clear;
end
else
exit;
end;

procedure TfrmEntradaMiolo.DBEdit4Exit(Sender: TObject);
begin
if length (DBEdit4.Text) > 5 then
begin
Application.MessageBox('Largura invalida, Verefique!', 'Informação', mb_Ok + mb_IconInformation);
DBEdit4.SetFocus;
DBEdit4.Clear;
end
else
exit;
end;

procedure TfrmEntradaMiolo.DBLookupComboBox1Click(Sender: TObject);
begin
DBEdit8.Text := DM.QEssencia['CODIGO'];
DM.TEssencia.Locate('ESSENCIA',DBLookupComboBox1.Text,[lopartialkey,locaseinsensitive]);
DM.TEssencia.Edit;
DM.TEssencia['EENTRADAS']:= TINICIALCAPA.Value + TINICIALMIOLO.Value - TPRODUCAO.Value;
end;

procedure TfrmEntradaMiolo.SpeedButton3Click(Sender: TObject);
begin
Application.CreateForm (TCalculator, Calculator);
Calculator.Show;
end;

procedure TfrmEntradaMiolo.FormActivate(Sender: TObject);
begin
frmPrincipal.Enabled := False;
end;

end.
