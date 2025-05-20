unit UnitEIMiolo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Mask, EDBNum, DBCtrls, DB,
  IBCustomDataSet, IBTable;

type
  TfrmSaldoMiolo = class(TForm)
    Panel1: TPanel;
    Bevel1: TBevel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    GroupBox1: TGroupBox;
    DBLookupComboBox1: TDBLookupComboBox;
    GroupBox2: TGroupBox;
    TINICIAL: TEvDBNumEdit;
    TCAPA: TEvDBNumEdit;
    TPRODUCAO: TEvDBNumEdit;
    EENTRADA: TEvDBNumEdit;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure DBLookupComboBox1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSaldoMiolo: TfrmSaldoMiolo;

implementation

uses UnitPrincipal, UnitDM;

{$R *.dfm}

procedure TfrmSaldoMiolo.BitBtn1Click(Sender: TObject);
begin
if DBLookupComboBox1.Text = '' then
begin
Application.MessageBox('Essência deve ser informada!', 'Inscrições', mb_Ok + mb_IconInformation);
DBLookupComboBox1.SetFocus;
end;

if (DBLookupComboBox1.Text <> '') then
begin
Application.MessageBox('Lembre-se de ter entendido e compreendido o aviso exibido anteriormente '+
'antes da confirmação deste lançamento, Confirma Inclusão do Saldo?', 'Atenção', mb_YesNo + mb_IconExclamation);
begin
DM.TEssencia.Edit;
DM.TEssencia['EENTRADAS']:= TINICIAL.Value + TCAPA.Value - TPRODUCAO.Value;
DM.TEssencia.Post;
DM.TEssencia.Refresh;
DM.TEssencia.Close;
DM.QEssencia.Close;
Self.Close;
end;
end;
end;

procedure TfrmSaldoMiolo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
frmprincipal.Enabled := True;
Action:= CaFree;
end;

procedure TfrmSaldoMiolo.FormShow(Sender: TObject);
begin
frmprincipal.Enabled := False;
TINICIAL.Text := DM.QEssencia['TINICIALMIOLO'];
DM.TEssencia.Close;
DM.TEssencia.Open;
DM.TEssencia.Refresh;
DM.TEssencia.Edit;
TINICIAL.Text := '0.000';
end;

procedure TfrmSaldoMiolo.BitBtn2Click(Sender: TObject);
begin
DM.QEssencia.Close;
DM.TEssencia.Close;
CLOSE;
end;

procedure TfrmSaldoMiolo.DBLookupComboBox1Click(Sender: TObject);
begin
TINICIAL.Text := DM.QEssencia['TINICIALMIOLO'];
DM.TEssencia.Refresh;
end;

end.
