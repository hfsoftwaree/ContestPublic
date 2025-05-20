unit UnitVendas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, EDBDate, DBCtrls, ExtCtrls, Buttons, EDBNum, DB,
  IBCustomDataSet, IBTable;

type
  TfrmVendas = class(TForm)
    Panel1: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton9: TSpeedButton;
    SpeedButton11: TSpeedButton;
    SpeedButton3: TSpeedButton;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label6: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label4: TLabel;
    Bevel2: TBevel;
    Label9: TLabel;
    Label10: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    EvDBDateEdit1: TEvDBDateEdit;
    DBEdit3: TEvDBNumEdit;
    DBEdit6: TEvDBNumEdit;
    DBEdit4: TEvDBNumEdit;
    DBEdit5: TEvDBNumEdit;
    EvDBNumEdit1: TEvDBNumEdit;
    EvDBNumEdit2: TEvDBNumEdit;
    EvDBNumEdit3: TEvDBNumEdit;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label11: TLabel;
    EPRODUCAO: TEvDBNumEdit;
    DBEdit7: TDBEdit;
    TVENDAS: TEvDBNumEdit;
    TPRODUCAO: TEvDBNumEdit;
    SpeedButton5: TSpeedButton;
    procedure SpeedButton4Click(Sender: TObject);
    procedure DBLookupComboBox1Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure EvDBNumEdit1Exit(Sender: TObject);
    procedure DBLookupComboBox2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmVendas: TfrmVendas;

implementation

uses UnitDM, UnitPesquisa3, UnitPrincipal, UnitCalculator;

{$R *.dfm}

procedure TfrmVendas.SpeedButton4Click(Sender: TObject);
begin
DM.TVENDA.Cancel;
DM.QCredor.Close;
DM.QProducao.Close;
DM.TVENDA.Close;
DM.TEssencia.Close;
Close;
end;

procedure TfrmVendas.DBLookupComboBox1Click(Sender: TObject);
begin
DBEdit2.Text := DM.QCredor['CODIGOCREDOR']; 
end;

procedure TfrmVendas.SpeedButton9Click(Sender: TObject);
begin
Self.Tag := 1;
Panel2.Enabled := True;
DBLookupComboBox1.SetFocus;
DM.TVENDA.Open;
DM.TVENDA.Append;
DM.TEssencia.Open;
EPRODUCAO.Text := '0.000';
with DM.QCredor do
  	begin
               Close;
               SQL.Clear;
               SQL.Add('Select * from Credor Order by NOMECREDOR');
               Open;
    end;

begin
with DM.QEssencia do
  	begin
               Close;
               SQL.Clear;
               SQL.Add('Select * from ESSENCIA Order by ESSENCIA');
               Open;
    end
end;
END;

procedure TfrmVendas.SpeedButton3Click(Sender: TObject);
begin
DM.TVENDA.Close; 
DM.TVENDA.Open;
if DM.TVENDA.RecordCount = 0 then
begin
DM.TVENDA.Close;
Application.MessageBox('Não ha Lançamentos para serem Alterados!', 'Alteração', mb_Ok + mb_IconInformation);
end;

DM.TVENDA.Open;
if DM.TVENDA.RecordCount <> 0 then
begin
Self.Tag := 2;
DM.TVENDA.Close;
DM.QCredor.Close;
DM.QProducao.Close;
Panel2.Enabled := False;
Application.CreateForm (TfrmPesquisa3, frmPesquisa3);
frmPesquisa3.Show;
end;
end;

procedure TfrmVendas.SpeedButton11Click(Sender: TObject);
begin
DM.TVENDA.Open;
if DM.TVENDA.RecordCount = 0 then
begin
DM.TVENDA.Close;
Application.MessageBox('Não ha Lançamentos para serem Excluidos!', 'Alteração', mb_Ok + mb_IconInformation);
end;

DM.TVENDA.Open;
if DM.TVENDA.RecordCount <> 0 then
begin
  Self.Tag := 3;
  DM.TVENDA.Close;
  DM.QCredor.Close;
  DM.QProducao.Close;
  DM.TEssencia.Close;  
  Panel2.Enabled := False;
  Application.CreateForm (TfrmPesquisa3, frmPesquisa3);
  frmPesquisa3.Show;
end;
end;

procedure TfrmVendas.SpeedButton2Click(Sender: TObject);
begin
if Self.Tag = 1 then
begin
Self.Tag := 0;
DM.TVENDA.Cancel;
DM.TVENDA.Close;
DM.TEssencia.Close;
end
else
begin
if Self.Tag = 2 then
begin
DM.TVENDA.Cancel;
end;
end;
end;

procedure TfrmVendas.SpeedButton1Click(Sender: TObject);
begin
if Self.Tag = 0 then
begin
Application.MessageBox('Não há lançamentos para serem gravados!', 'Gravação', mb_Ok + mb_IconInformation);
end
else
begin
if DBLookupComboBox1.Text = '' then
begin
Application.MessageBox('Cliente deve ser informado!', 'Venda', mb_Ok + mb_IconInformation);
DBLookupComboBox1.SetFocus;
end
else
begin
if EVDBDateEdit1.Text = '' then
begin
Application.MessageBox('Data da Venda deve ser informada!', 'Venda', mb_Ok + mb_IconInformation);
EVDBDateEdit1.SetFocus;
end
else
begin
if DBLookupComboBox2.Text = '' then
begin
Application.MessageBox('Essência deve ser informada, se a produção for de varias essências então entre com a Essência "DIVERSAS"!', 'Período', mb_Ok + mb_IconInformation);
DBLookupComboBox2.SetFocus;
end
else
begin
if DBLookupComboBox2.Text = '' then
begin
Application.MessageBox('Essência deve ser informada!', 'Venda', mb_Ok + mb_IconInformation);
DBLookupComboBox2.SetFocus;
end
else
begin
if DBEdit6.Text = '' then
begin
Application.MessageBox('Quantidade deve ser informada!', 'Venda', mb_Ok + mb_IconInformation);
DBEdit6.SetFocus;
end
else
begin
if DBEdit5.Text = '' then
begin
Application.MessageBox('Comprimento deve ser informado!', 'Venda', mb_Ok + mb_IconInformation);
DBEdit5.SetFocus;
end
else
begin
if DBEdit3.Text = '' then
begin
Application.MessageBox('Largura deve ser informada!', 'Venda', mb_Ok + mb_IconInformation);
DBEdit3.SetFocus;
end
else
begin
if DBEdit4.Text = '' then
begin
Application.MessageBox('Expessura deve ser informada!', 'Venda', mb_Ok + mb_IconInformation);
DBEdit4.SetFocus;
end
else
begin
if EvDBNumEdit1.Text = '' then
begin
Application.MessageBox('Valor Unitário deve ser informado!', 'Venda', mb_Ok + mb_IconInformation);
EvDBNumEdit1.SetFocus;
end;
end;
end;
end;
end;
end;
end;
end;
end;
end;

if (Self.Tag <> 0) and (DBLookupComboBox1.Text <> '') and (EvDBDateEdit1.Text <> '') and (DBLookupComboBox2.Text <> '') and (EvDBNumEdit1.Text <> '') and (DBEdit6.Text <> '') and (DBEdit5.Text <> '') and (DBEdit3.Text <> '') and (DBEdit4.Text <> '') and (EvDBNumEdit1.Text <> '') then
begin
if Self.Tag = 1 then
If Application.MessageBox('Confirma Inclusão deste lançamento?', 'Confirmação',
mb_YesNo + mb_ICONQUESTION) = idYes then
begin
      DM.TEssencia.Edit;
      DM.TEssencia['TVENDAS']:= TVENDAS.Value + EVDBNUMEdit2.Value;
      DM.TEssencia['EPRODUCAO']:= TPRODUCAO.Value - TVENDAS.Value;
      DM.TEssencia.Post;
      DM.TEssencia.Refresh;


    DM.TVENDA.Post;
    DM.TVENDA.Refresh;
      If Application.MessageBox('Continua Lançamento?', 'Confirmação',
      mb_YesNo + mb_ICONQUESTION) = idYes then
      begin
      DM.TVENDA.Append;
      DBLookupComboBox1.SetFocus;
      end
      else
      begin
      Self.Tag := 0;
      DM.TVENDA.Close;
      DM.TEssencia.Close;
      Panel2.Enabled := False;
      end;
      end;
end;

if Self.Tag = 2 then
If Application.MessageBox('Confirma Alteração deste lançamento?', 'Confirmação',
mb_YesNo + mb_ICONQUESTION) = idYes then
begin
    DM.TEssencia['TVENDAS']:= TVENDAS.Value + EVDBNUMEdit2.Value;
    DM.TEssencia['EPRODUCAO']:= TPRODUCAO.Value - TVENDAS.Value;
    DM.TEssencia.Post;
    DM.TEssencia.Refresh;

    DM.TVENDA.Post;
    DM.TVENDA.Refresh;
end;
end;

procedure TfrmVendas.EvDBNumEdit1Exit(Sender: TObject);
var vn1, vn2, vn3, vn4, vn5, vsoma, vsoma1: Real;
begin
      vn1:=0;
      vn2:=0;
      vn3:=0;
      vn4:=0;
      vn5:=0;
      vsoma:=0;
      vsoma1:=0;
      vn1:= StrToFloat(DBEdit6.Text);
      vn2:= StrToFloat(DBEdit5.Text);
      vn3:= StrToFloat(DBEdit3.Text);
      vn4:= StrToFloat(DBEdit4.Text);
      vn5:= StrToFloat(EvDBNumEdit1.Text);
      vsoma := vn1 * vn2 * vn3 * vn4;
      vsoma1 := vn5 * vn1;
      EvDBNumEdit2.Text := FloatToStr(vsoma);
      EvDBNumEdit3.Text := FloatToStr(vsoma1);
      SpeedButton1.Click;
      exit;
end;

procedure TfrmVendas.DBLookupComboBox2Click(Sender: TObject);
begin
DBEdit7.Text := DM.QEssencia['CODIGO'];
DM.TEssencia.Locate('ESSENCIA',DBLookupComboBox2.Text,[lopartialkey,locaseinsensitive]);
DM.TEssencia.Edit;
DM.TEssencia['EPRODUCAO']:= TPRODUCAO.Value - TVENDAS.Value;
end;

procedure TfrmVendas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
frmprincipal.Enabled := true;
Action := CaFree;
end;

procedure TfrmVendas.FormShow(Sender: TObject);
begin
frmprincipal.Enabled := false;
end;

procedure TfrmVendas.SpeedButton5Click(Sender: TObject);
begin
Application.CreateForm (TCalculator, Calculator);
Calculator.Show;
end;

procedure TfrmVendas.FormActivate(Sender: TObject);
begin
frmPrincipal.Enabled := False;
end;

end.
