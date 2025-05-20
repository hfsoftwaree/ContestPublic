unit UnitSelecaoImpressao9;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, ComCtrls, ExtCtrls, Buttons, DB, ADODB,
  EDateEd, EKeyNav;

type
  TfrmSelecaoImpressao9 = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    GroupBox4: TGroupBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    DataInicial1: TEvDateEdit;
    DataFinal1: TEvDateEdit;
    DBLookupComboBox1: TEdit;
    Edit1: TEdit;
    BitBtn4: TBitBtn;
    DataInicial: TEdit;
    DataFinal: TEdit;
    procedure BitBtn3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure DataInicial1Exit(Sender: TObject);
    procedure DataFinal1Exit(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSelecaoImpressao9: TfrmSelecaoImpressao9;

implementation

uses UnitPrincipal, UnitPesquisa, UnitDM, UnitRepEntradaCapa,
  UnitDMRelatorio, UnitRepVendas, UnitPesquisa3, UnitPesquisa4;


{$R *.dfm}

Function ConverteData(Data:String):String;
begin
    Result := Copy(Data,4,3) + Copy(Data,1,3) + Copy(Data,7,4);
end;


procedure TfrmSelecaoImpressao9.BitBtn3Click(Sender: TObject);
begin
Close;
end;

procedure TfrmSelecaoImpressao9.FormShow(Sender: TObject);
begin
frmPrincipal.Enabled := False;
BitBtn4.SetFocus;
end;

procedure TfrmSelecaoImpressao9.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
frmPrincipal.Enabled := True;
Action := Cafree;
end;

procedure TfrmSelecaoImpressao9.BitBtn4Click(Sender: TObject);
begin
Application.CreateForm(TfrmPesquisa4, frmPesquisa4);
frmPesquisa4.Show;
end;

procedure TfrmSelecaoImpressao9.BitBtn1Click(Sender: TObject);
begin
if Edit1.Text = '' then
begin
Application.MessageBox('Fornecedor deve ser informado!', 'Informação', mb_Ok + mb_IconInformation);
Bitbtn4.SetFocus;
end
else
begin
if DataInicial1.DateText = '00/00/0000' then
begin
Application.MessageBox('Data Inicial deve ser informada!', 'Informação', mb_Ok + mb_IconInformation);
DataInicial1.SetFocus;
end
else
begin
if DataFinal1.DateText = '00/00/0000' then
begin
Application.MessageBox('Data Final deve ser informada!', 'Informação', mb_Ok + mb_IconInformation);
DataFinal1.SetFocus;
end;
end;
end;

if (Edit1.Text <> '') and (DataInicial1.Text <> '00/00/0000') and (DataFinal1.Text <> '00/00/0000') and (DataInicial1.Text <> '  /  /    ') and (DataFinal1.Text <> '  /  /    ')then
begin
  DataInicial.Text := ConverteData(DataInicial1.Text);
  DataFinal.Text := ConverteData(DataFinal1.Text);
  repVendas.TVendas.Filtered:=False;
  repVendas.TVendas.Close;
  repVendas.TVendas.Filter := 'CODIGOCREDOR = ' + QuotedStr(Edit1.Text) + ' and DATAVENDA >= ' + QuotedStr(DataInicial.Text) + ' and DATAVENDA <= '+ QuotedStr(DataFinal.Text);
  repVendas.TVendas.Filtered:=True;
  repVendas.TVendas.Open;
  DM.QManutencao.Open;
  if repVendas.TVendas.RecordCount = 0 then
begin
repVendas.TVendas.Filtered:=False;
repVendas.TVendas.Close;
bitbtn4.SetFocus;
Application.MessageBox('Não há relatório(s) a ser(em) vizualizado(s) com os critérios informados!', 'Informação', mb_Ok + mb_IconInformation);
end
else
begin
if RadioButton1.Checked = True then
begin
repVendas.TVendas.IndexFieldNames := ('DATAVENDA');
RepVendas.PerInicial.Caption := DataInicial1.Text;
RepVendas.PerFinal.Caption := DataFinal1.Text;
repVendas.QuickRep1.Preview;
end
else
begin
if RadioButton2.Checked = True then
begin
repVendas.TVendas.IndexFieldNames := ('ESSENCIA');
RepVendas.PerInicial.Caption := DataInicial1.Text;
RepVendas.PerFinal.Caption := DataFinal1.Text;
repVendas.QuickRep1.Preview;
end;
end;
end;
end;
end;

procedure TfrmSelecaoImpressao9.DataInicial1Exit(Sender: TObject);
begin
DataInicial.Text := ConverteData(DataInicial1.Text);
end;

procedure TfrmSelecaoImpressao9.DataFinal1Exit(Sender: TObject);
begin
DataFinal.Text := ConverteData(DataFinal1.Text);
end;


procedure TfrmSelecaoImpressao9.BitBtn2Click(Sender: TObject);
begin
if Edit1.Text = '' then
begin
Application.MessageBox('Fornecedor deve ser informado!', 'Informação', mb_Ok + mb_IconInformation);
Bitbtn4.SetFocus;
end
else
begin
if DataInicial1.DateText = '00/00/0000' then
begin
Application.MessageBox('Data Inicial deve ser informada!', 'Informação', mb_Ok + mb_IconInformation);
DataInicial1.SetFocus;
end
else
begin
if DataFinal1.DateText = '00/00/0000' then
begin
Application.MessageBox('Data Final deve ser informada!', 'Informação', mb_Ok + mb_IconInformation);
DataFinal1.SetFocus;
end;
end;
end;

if (Edit1.Text <> '') and (DataInicial1.Text <> '00/00/0000') and (DataFinal1.Text <> '00/00/0000') and (DataInicial1.Text <> '  /  /    ') and (DataFinal1.Text <> '  /  /    ')then
begin
  DataInicial.Text := ConverteData(DataInicial1.Text);
  DataFinal.Text := ConverteData(DataFinal1.Text);
  repVendas.TVendas.Filtered:=False;
  repVendas.TVendas.Close;
  repVendas.TVendas.Filter := 'CODIGOCREDOR = ' + QuotedStr(Edit1.Text) + ' and DATAVENDA >= ' + QuotedStr(DataInicial.Text) + ' and DATAVENDA <= '+ QuotedStr(DataFinal.Text);
  repVendas.TVendas.Filtered:=True;
  repVendas.TVendas.Open;
  DM.QManutencao.Open;
  if repVendas.TVendas.RecordCount = 0 then
begin
repVendas.TVendas.Filtered:=False;
repVendas.TVendas.Close;
bitbtn4.SetFocus;
Application.MessageBox('Não há relatório(s) a ser(em) vizualizado(s) com os critérios informados!', 'Informação', mb_Ok + mb_IconInformation);
end
else
begin
if RadioButton1.Checked = True then
begin
repVendas.TVendas.IndexFieldNames := ('DATAVENDA');
RepVendas.PerInicial.Caption := DataInicial1.Text;
RepVendas.PerFinal.Caption := DataFinal1.Text;
repVendas.QuickRep1.PrinterSetup;
end
else
begin
if RadioButton2.Checked = True then
begin
repVendas.TVendas.IndexFieldNames := ('ESSENCIA');
RepVendas.PerInicial.Caption := DataInicial1.Text;
RepVendas.PerFinal.Caption := DataFinal1.Text;
repVendas.QuickRep1.PrinterSetup;
end;
end;
end;
end;
end;

end.
