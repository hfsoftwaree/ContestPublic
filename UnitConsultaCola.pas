unit UnitConsultaCola;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, DBCtrls, Grids, DBGrids, Buttons;

type
  TfrmConsultaCola = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Bevel1: TBevel;
    BitBtn1: TBitBtn;
    Label6: TLabel;
    BitBtn3: TBitBtn;
    PRODUCAO: TLabel;
    TOTAL2: TLabel;
    MEDIA: TLabel;
    DBComboBox1: TComboBox;
    DBComboBox2: TComboBox;
    DBComboBox3: TComboBox;
    BitBtn2: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsultaCola: TfrmConsultaCola;

implementation

uses UnitPrincipal, UnitDM, UnitCalculator;

{$R *.dfm}

procedure TfrmConsultaCola.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
frmprincipal.Enabled := True;
Action := CaFree;
end;

procedure TfrmConsultaCola.FormShow(Sender: TObject);
begin
frmprincipal.Enabled := False;
end;

procedure TfrmConsultaCola.BitBtn1Click(Sender: TObject);
begin
DM.TProducao.Filtered := False;
DM.TProducao.Close;
Close;
end;

procedure TfrmConsultaCola.BitBtn3Click(Sender: TObject);
var total, total1: real;
var vn1, vn2, vsoma:real;
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
  DM.TProducao.Filtered := False;
  DM.TProducao.Close;
  DM.TProducao.Filter := 'DIA = ''' + (DBComboBox1.Text) + ''' and MES = ''' +(DBComboBox2.Text) + ''' and ANO = ''' + (DBComboBox3.Text)+'''';
  DM.TProducao.Filtered := True;
  DM.TProducao.Open;

begin
if (DM.TProducao.RecordCount <> 0) then
begin
  DM.TProducao.Close;
  DM.TProducao.Open;
  total:=0;
  total1:=0;
  DM.TProducao.Prior;
  while not DM.TProducao.Eof do
  begin
    total := DM.TProducao['TOTAL'] + total;
    total1 := DM.TProducao['COLA'] + total1;
    DM.TProducao.Next;
  end;
   frmConsultaCola.PRODUCAO.Caption := FormatCurr('#0.000',total);
   frmConsultaCola.TOTAL2.Caption := FormatCurr('#0.000',total1);
   BitBtn1.SetFocus;

      vn1:=0;
      vn2:=0;
      vsoma:=0;
      vn1:= StrToFloat(TOTAL2.Caption);
      vn2:= StrToFloat(PRODUCAO.Caption);
      vsoma := vn1 / vn2;
      MEDIA.Caption := FloatToStr(vsoma);
      frmConsultaCola.MEDIA.Caption := FormatCurr('#0.000',vsoma);


end
else
begin
BitBtn3.SetFocus;
DM.TProducao.Filtered := False;
DM.TProducao.Close;
PRODUCAO.Caption := '0.000';
TOTAL2.Caption := '0.000';
MEDIA.Caption := '0.000';
Application.MessageBox('Período selecionado não possui Lançamentos!', 'Informação', mb_Ok + mb_IconInformation);
end;
end;
end;
end;


procedure TfrmConsultaCola.BitBtn2Click(Sender: TObject);
begin
Application.CreateForm (TCalculator, Calculator);
Calculator.Show;
end;

procedure TfrmConsultaCola.FormActivate(Sender: TObject);
begin
frmPrincipal.Enabled := False;
end;

end.
