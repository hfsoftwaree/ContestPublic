unit UnitConsulta;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, EDBNum, DBCtrls, ExtCtrls, Buttons, DB,
  IBCustomDataSet, IBTable;

type
  TfrmConsulta = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Bevel2: TBevel;
    TOTAL: TLabel;
    TOTAL1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Bevel1: TBevel;
    TENTRADA: TLabel;
    GroupBox1: TGroupBox;
    DBLookupComboBox1: TDBLookupComboBox;
    BitBtn1: TBitBtn;
    GroupBox2: TGroupBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    TCAPA: TEvDBNumEdit;
    TMIOLO: TEvDBNumEdit;
    TPRODUCAO: TEvDBNumEdit;
    TVENDAS: TEvDBNumEdit;
    BitBtn3: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure DBLookupComboBox1Click(Sender: TObject);
    procedure TOTALClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsulta: TfrmConsulta;

implementation

uses UnitDM, UnitPrincipal, UnitCalculator;

{$R *.dfm}

procedure TfrmConsulta.FormShow(Sender: TObject);
begin
frmPrincipal.Enabled := False;
DM.QEssencia.Close;
DM.QEssencia.Open;
DM.TEssencia.Close;
DM.TEssencia.Open;
end;


procedure TfrmConsulta.DBLookupComboBox1Click(Sender: TObject);
var vn1, vn2, vn3, vsoma, vsoma1:real;
begin
if RadioButton1.Checked = true then
begin
Label2.Visible := True;
TENTRADA.Visible := True;
TPRODUCAO.Visible := True;
TOTAL.Visible := True;
TOTAL1.Visible := False;
TVENDAS.Visible := False;
Label4.Visible := False;
DM.TEssencia.Locate('ESSENCIA',DBLookupComboBox1.Text,[lopartialkey,locaseinsensitive]);
      vn1:=0;
      vn2:=0;
      vn3:=0;
      vsoma:=0;
      vn1:= StrToFloat(TCAPA.Text);
      vn2:= StrToFloat(TMIOLO.Text);
      vn3:= StrToFloat(TPRODUCAO.Text);
      vsoma := vn1 + vn2;
      vsoma1 := vn1 + vn2 - vn3;
      TENTRADA.Caption := FloatToStr(vsoma);
      TOTAL.Caption := FloatToStr(vsoma1);
      frmConsulta.TENTRADA.Caption := FormatCurr('#0.000',vsoma);
      frmConsulta.TOTAL.Caption := FormatCurr('#0.000',vsoma1);
end
else
begin
if RadioButton2.Checked = true then
begin
Label4.Visible := True;
TVENDAS.Visible := True;
TPRODUCAO.Visible := True;
TOTAL1.Visible := True;
TOTAL.Visible := False;
TENTRADA.Visible := False;
Label2.Visible := False;
DM.TEssencia.Locate('ESSENCIA',DBLookupComboBox1.Text,[lopartialkey,locaseinsensitive]);
      vn1:=0;
      vn2:=0;
      vsoma:=0;
      vn1:= StrToFloat(TPRODUCAO.Text);
      vn2:= StrToFloat(TVENDAS.Text);
      vsoma := vn1 - vn2;
      TOTAL1.Caption := FloatToStr(vsoma);
      frmConsulta.TOTAL1.Caption := FormatCurr('#0.000',vsoma);
end;
end;
end;

procedure TfrmConsulta.TOTALClick(Sender: TObject);
begin
DBLookupComboBox1.SetFocus;
end;

procedure TfrmConsulta.BitBtn2Click(Sender: TObject);
begin
DM.QEssencia.Close;
DM.TEssencia.Close;
CLOSE;
end;

procedure TfrmConsulta.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
frmPrincipal.Enabled := True;
Action := CaFree;
end;


procedure TfrmConsulta.RadioButton1Click(Sender: TObject);
var vn1, vn2, vn3, vsoma, vsoma1: real;
begin
if DBLookupComboBox1.Text = '' then
begin
Application.MessageBox('Essência deve ser informada!', 'Inscrições', mb_Ok + mb_IconInformation);
DBLookupComboBox1.SetFocus;
end
else
begin
if DBLookupComboBox1.Text <> '' then
begin
Label2.Visible := True;
TENTRADA.Visible := True;
TPRODUCAO.Visible := True;
TOTAL.Visible := True;
TOTAL1.Visible := False;
TVENDAS.Visible := False;
Label4.Visible := False;
DM.TEssencia.Locate('ESSENCIA',DBLookupComboBox1.Text,[lopartialkey,locaseinsensitive]);
      vn1:=0;
      vn2:=0;
      vn3:=0;
      vsoma:=0;
      vn1:= StrToFloat(TCAPA.Text);
      vn2:= StrToFloat(TMIOLO.Text);
      vn3:= StrToFloat(TPRODUCAO.Text);
      vsoma := vn1 + vn2;
      vsoma1 := vn1 + vn2 - vn3;
      TENTRADA.Caption := FloatToStr(vsoma);
      TOTAL.Caption := FloatToStr(vsoma1);
      frmConsulta.TENTRADA.Caption := FormatCurr('#0.000',vsoma);
      frmConsulta.TOTAL.Caption := FormatCurr('#0.000',vsoma1);
end;
end;
end;

procedure TfrmConsulta.RadioButton2Click(Sender: TObject);
var vn1, vn2, vsoma: real;
begin
if DBLookupComboBox1.Text = '' then
begin
Application.MessageBox('Essência deve ser informada!', 'Inscrições', mb_Ok + mb_IconInformation);
DBLookupComboBox1.SetFocus;
end
else
begin
if DBLookupComboBox1.Text <> '' then
begin
Label4.Visible := True;
TVENDAS.Visible := True;
TPRODUCAO.Visible := True;
TOTAL1.Visible := True;
TOTAL.Visible := False;
TENTRADA.Visible := False;
Label2.Visible := False;
DM.TEssencia.Locate('ESSENCIA',DBLookupComboBox1.Text,[lopartialkey,locaseinsensitive]);
      vn1:=0;
      vn2:=0;
      vsoma:=0;
      vn1:= StrToFloat(TPRODUCAO.Text);
      vn2:= StrToFloat(TVENDAS.Text);
      vsoma := vn1 - vn2;
      TOTAL1.Caption := FloatToStr(vsoma);
      frmConsulta.TOTAL1.Caption := FormatCurr('#0.000',vsoma);
end;
end;
end;

procedure TfrmConsulta.BitBtn3Click(Sender: TObject);
begin
Application.CreateForm (TCalculator, Calculator);
Calculator.Show;
end;

procedure TfrmConsulta.FormActivate(Sender: TObject);
begin
frmPrincipal.Enabled := False;
end;

end.
