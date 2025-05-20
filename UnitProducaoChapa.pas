unit UnitProducaoChapa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Buttons, ExtCtrls, EKeyNav, EDBZero, Mask,
  EDBNum, DB, IBCustomDataSet, IBTable, IBQuery;

type
  TfrmProducaoChapa = class(TForm)
    Panel1: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton9: TSpeedButton;
    SpeedButton11: TSpeedButton;
    Panel2: TPanel;
    Panel3: TPanel;
    DBComboBox1: TDBComboBox;
    DBComboBox2: TDBComboBox;
    DBComboBox3: TDBComboBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    EvDBNumEdit2: TEvDBNumEdit;
    EvDBNumEdit3: TEvDBNumEdit;
    EvDBNumEdit4: TEvDBNumEdit;
    EvDBZeroEdit1: TEvDBZeroEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    SpeedButton3: TSpeedButton;
    Label10: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Panel4: TPanel;
    EvDBNumEdit5: TEvDBNumEdit;
    Label9: TLabel;
    Label11: TLabel;
    TOTAL3: TEvDBNumEdit;
    TINICIALCAPA: TEvDBNumEdit;
    TINICIALMIOLO: TEvDBNumEdit;
    TPRODUCAO: TEvDBNumEdit;
    EvDbZeroEdit2: TDBEdit;
    SpeedButton5: TSpeedButton;
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
    procedure EvDBNumEdit4Exit(Sender: TObject);
    procedure DBLookupComboBox1Click(Sender: TObject);
    procedure DBEdit3Exit(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmProducaoChapa: TfrmProducaoChapa;

implementation

uses UnitDM, UnitPrincipal, UnitPesquisa1, UnitCalculator;

{$R *.dfm}

procedure TfrmProducaoChapa.SpeedButton4Click(Sender: TObject);
begin
DM.TProducao.Cancel;
DM.QEssencia.Close;
DM.TEssencia.Close; 
Close;
end;

procedure TfrmProducaoChapa.SpeedButton9Click(Sender: TObject);
begin
Self.Tag := 1;
Panel2.Enabled := True;
Panel3.Enabled := True;
DBComboBox1.SetFocus;
DM.TEssencia.Open;
TOTAL3.Text := '0.000';
DM.QProducao.Close;
DM.TProducao.Open;
DM.TProducao.Append;
EvDbZeroEdit2.Text := '0';
with DM.QEssencia do
  	begin
               Close;
               SQL.Clear;
               SQL.Add('Select * from Essencia Order by ESSENCIA');
               Open;
    end
end;

procedure TfrmProducaoChapa.FormShow(Sender: TObject);
begin
frmPrincipal.Enabled := False;
DM.TProducao.Close;
end;

procedure TfrmProducaoChapa.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
DM.TProducao.Close;
frmPrincipal.Enabled := True;
Action := CaFree;
end;

procedure TfrmProducaoChapa.SpeedButton2Click(Sender: TObject);
begin
if Self.Tag = 1 then
begin
Self.Tag := 0;
DM.TProducao.Cancel;
DM.TProducao.Close;
DM.QEssencia.Close;
DM.TEssencia.Close;
Panel2.Enabled := False;
Panel3.Enabled := False;
end
else
begin
if Self.Tag = 2 then
begin
DM.TProducao.Cancel;
DM.TEssencia.Cancel;
end;
end;
end;

procedure TfrmProducaoChapa.SpeedButton1Click(Sender: TObject);
begin
if Self.Tag = 0 then
begin
Application.MessageBox('Não há lançamentos para serem gravados!', 'Gravação', mb_Ok + mb_IconInformation);
end
else
begin
if Self.Tag = 0 then
begin
Application.MessageBox('Não há lançamentos para serem gravados!', 'Gravação', mb_Ok + mb_IconInformation);
end
else
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
end
else
begin
if DBLookupComboBox1.Text = '' then
begin
Application.MessageBox('Essência deve ser informada, se a produção for de varias essências então entre com a Essência "DIVERSAS"!', 'Período', mb_Ok + mb_IconInformation);
DBLookupComboBox1.SetFocus;
end
else
begin
if EvDBZeroEdit1.Text = '' then
begin
Application.MessageBox('Quantidade deve ser informada!', 'Período', mb_Ok + mb_IconInformation);
EvDBZeroEdit1.SetFocus;
end
else
begin
if EvDBNumEdit2.Text = '' then
begin
Application.MessageBox('Comprimento deve ser informado!', 'Período', mb_Ok + mb_IconInformation);
EvDBNumEdit2.SetFocus;
end
else
begin
if EvDBNumEdit3.Text = '' then
begin
Application.MessageBox('Largura deve ser informada!', 'Período', mb_Ok + mb_IconInformation);
EvDBNumEdit3.SetFocus;
end
else
begin
if EvDBNumEdit4.Text = '' then
begin
Application.MessageBox('Expessura deve ser informada!', 'Período', mb_Ok + mb_IconInformation);
EvDBNumEdit4.SetFocus;
end
else
begin
if EvDBZeroEdit1.Text = '' then
begin
Application.MessageBox('Quantidade deve ser informada!', 'Período', mb_Ok + mb_IconInformation);
EvDBZeroEdit1.SetFocus;
end
else
begin
if EvDBZeroEdit2.Text = '' then
begin
EvDBZeroEdit2.Text := '0';
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
end;
end;

if (Self.Tag <> 0) and (DBComboBox1.Text <> '') and (DBComboBox2.Text <> '') and (DBComboBox3.Text <> '') and (EvDBZeroEdit1.Text <> '') and (EvDBNumEdit2.Text <> '') and (EvDBNumEdit3.Text <> '') and (EvDBNumEdit4.Text <> '') and (EvDBZeroEdit1.Text <> '') then
begin
if Self.Tag = 1 then
If Application.MessageBox('Confirma Inclusão deste lançamento?', 'Confirmação',
mb_YesNo + mb_ICONQUESTION) = idYes then
begin
    DM.TEssencia.Edit;
    DM.TEssencia['TPRODUCAO']:= TPRODUCAO.Value + EVDBNumEdit5.Value;
    DM.TEssencia['EENTRADAS']:= TINICIALCAPA.Value + TINICIALMIOLO.Value - TPRODUCAO.Value;
    DM.TEssencia.Post;
    DM.TEssencia.Refresh;

      DM.TProducao.Post;
      If Application.MessageBox('Continua Lançamento?', 'Confirmação',
      mb_YesNo + mb_ICONQUESTION) = idYes then
      begin
      DM.TProducao.Refresh;
      DM.TEssencia.Refresh;
      TOTAL3.Text := '0.000';
      DM.TProducao.Append;
      DBComboBox1.SetFocus;
      end
      else
      begin
      Self.Tag := 0;
      DM.TProducao.Refresh;
      DM.TEssencia.Refresh;
      DM.TProducao.Close;
      DM.TEssencia.Close;
      Panel2.Enabled := False;
      Panel3.Enabled := False;
      end;
      end;
end;

if Self.Tag = 2 then
If Application.MessageBox('Confirma Alteração deste lançamento?', 'Confirmação',
mb_YesNo + mb_ICONQUESTION) = idYes then
begin
    DM.TEssencia.Edit;
    DM.TEssencia['TPRODUCAO']:= TPRODUCAO.Value + EVDBNumEdit5.Value;
    DM.TEssencia['EENTRADAS']:= TINICIALCAPA.Value + TINICIALMIOLO.Value - TPRODUCAO.Value;
    DM.TEssencia.Post;
    DM.TEssencia.Refresh;

    DM.TProducao.Post;
    DM.TProducao.Refresh;
    Self.Tag := 0;
    DM.TProducao.Close;
    DM.TEssencia.Close;
    Panel2.Enabled := False;
    Panel3.Enabled := False;
end;
end;

procedure TfrmProducaoChapa.SpeedButton3Click(Sender: TObject);
begin
DM.QProducao.Close;
DM.QProducao.Open;
if DM.QProducao.RecordCount = 0 then
begin
DM.QProducao.Close;
Application.MessageBox('Não ha Lançamentos para serem Excluídos!', 'Alteração', mb_Ok + mb_IconInformation);
end;

DM.QProducao.Close;
DM.QProducao.Open;
if DM.QProducao.RecordCount <> 0 then
begin
Self.Tag := 2;
DM.QProducao.Close;
Panel2.Enabled := False;
Panel3.Enabled := False;
Application.CreateForm (TfrmPesquisa1, frmPesquisa1);
frmPesquisa1.Show;
end;
end;

procedure TfrmProducaoChapa.SpeedButton11Click(Sender: TObject);
begin
DM.QProducao.Close;
DM.QProducao.Open;
if DM.QProducao.RecordCount = 0 then
begin
DM.QProducao.Close;
Application.MessageBox('Não ha Lançamentos para serem Excluídos!', 'Alteração', mb_Ok + mb_IconInformation);
end;

DM.QProducao.Close;
DM.QProducao.Open;
if DM.QProducao.RecordCount <> 0 then
begin
  DM.QProducao.Close;
  Panel2.Enabled := False;
  Panel3.Enabled := False;
  Self.Tag := 3;
  Application.CreateForm (TfrmPesquisa1, frmPesquisa1);
  frmPesquisa1.Show;
end;
end;

procedure TfrmProducaoChapa.EvDBNumEdit4Exit(Sender: TObject);
var vn1, vn2, vn3, vn4, vsoma: Real;
begin
      vn1:=0;
      vn2:=0;
      vn3:=0;
      vn4:=0;
      vsoma:=0;
      vn1:= StrToFloat(EvDBZeroEdit1.Text);
      vn2:= StrToFloat(EvDBNumEdit2.Text);
      vn3:= StrToFloat(EvDBNumEdit3.Text);
      vn4:= StrToFloat(EvDBNumEdit4.Text);
      vsoma := vn1 * vn2 * vn3 * vn4/10;
      EvDBNumEdit5.Text := FloatToStr(vsoma);
      exit;
end;

procedure TfrmProducaoChapa.DBLookupComboBox1Click(Sender: TObject);
begin
DBEdit2.Text := DM.QEssencia['CODIGO'];
DM.TEssencia.Locate('ESSENCIA',DBLookupComboBox1.Text,[lopartialkey,locaseinsensitive]); 
DM.TEssencia.Edit;
DM.TEssencia['EENTRADAS']:= TINICIALCAPA.Value + TINICIALMIOLO.Value - TPRODUCAO.Value;
end;

procedure TfrmProducaoChapa.DBEdit3Exit(Sender: TObject);
begin
SpeedButton1.Click;
end;


procedure TfrmProducaoChapa.SpeedButton5Click(Sender: TObject);
begin
Application.CreateForm (TCalculator, Calculator);
Calculator.Show;
end;

procedure TfrmProducaoChapa.FormActivate(Sender: TObject);
begin
frmPrincipal.Enabled := False;
end;

end.
