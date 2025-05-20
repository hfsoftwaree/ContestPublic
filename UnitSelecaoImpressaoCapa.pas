unit UnitSelecaoImpressaoCapa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, ComCtrls, ExtCtrls, Buttons, DB, ADODB,
  EDateEd, EKeyNav;

type
  TfrmSelecaoImpressao = class(TForm)
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
    procedure Edit1Click(Sender: TObject);
    procedure DBEdit1Change(Sender: TObject);
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
  frmSelecaoImpressao: TfrmSelecaoImpressao;

implementation

uses UnitPrincipal, UnitPesquisa, UnitDM, UnitRepEntradaCapa,
  UnitDMRelatorio;


{$R *.dfm}

Function ConverteData(Data:String):String;
begin
    Result := Copy(Data,4,3) + Copy(Data,1,3) + Copy(Data,7,4);
end;


procedure TfrmSelecaoImpressao.BitBtn3Click(Sender: TObject);
begin
Close;
end;

procedure TfrmSelecaoImpressao.FormShow(Sender: TObject);
begin
frmPrincipal.Enabled := False;
BitBtn4.SetFocus;
Self.Tag := 1;
end;

procedure TfrmSelecaoImpressao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
frmPrincipal.Enabled := True;
Self.Tag := 0;
Action := Cafree;
end;

procedure TfrmSelecaoImpressao.BitBtn4Click(Sender: TObject);
begin
Application.CreateForm(TfrmPesquisa, frmPesquisa);
frmPesquisa.Show;
end;

procedure TfrmSelecaoImpressao.Edit1Click(Sender: TObject);
begin
DBLookupComboBox1.Text := DM.QFornecedor['NOMEFORNECEDOR'];
end;

procedure TfrmSelecaoImpressao.DBEdit1Change(Sender: TObject);
begin
DBLookupComboBox1.Text := DM.TFornecedor['NOMEFORNECEDOR'];
end;

procedure TfrmSelecaoImpressao.BitBtn1Click(Sender: TObject);
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
  repEntradaCapa.TCapa.Filtered:=False;
  repEntradaCapa.TCapa.Close;
  repEntradaCapa.TCapa.Filter := 'CODIGOFORNECEDOR = ' + QuotedStr(Edit1.Text) + ' and DATAENTRADA >= ' + QuotedStr(DataInicial.Text) + ' and DATAENTRADA <= '+ QuotedStr(DataFinal.Text);
  repEntradaCapa.TCapa.Filtered:=True;
  repEntradaCapa.TCapa.Open;
  DM.QManutencao.Open;
  if repEntradaCapa.TCapa.RecordCount = 0 then
begin
repEntradaCapa.TCapa.Filtered:=False;
repEntradaCapa.TCapa.Close;
Application.MessageBox('Não há relatório(s) a ser(em) vizualizado(s) com os critérios informados!', 'Informação', mb_Ok + mb_IconInformation);
bitbtn4.SetFocus;
end
else
begin
if RadioButton1.Checked = True then
begin
repEntradaCapa.TCapa.IndexFieldNames := ('DATAENTRADA');
RepEntradaCapa.PerInicial.Caption := DataInicial1.Text;
RepEntradaCapa.PerFinal.Caption := DataFinal1.Text;
RepEntradaCapa.QuickRep1.Preview;
end
else
begin
if RadioButton2.Checked = True then
begin
repEntradaCapa.TCapa.IndexFieldNames := ('ESSENCIA');
RepEntradaCapa.PerInicial.Caption := DataInicial1.Text;
RepEntradaCapa.PerFinal.Caption := DataFinal1.Text;
RepEntradaCapa.QuickRep1.Preview;
end;
end;
end;
end;
end;

procedure TfrmSelecaoImpressao.DataInicial1Exit(Sender: TObject);
begin
DataInicial.Text := ConverteData(DataInicial1.Text);
end;

procedure TfrmSelecaoImpressao.DataFinal1Exit(Sender: TObject);
begin
DataFinal.Text := ConverteData(DataFinal1.Text);
end;


procedure TfrmSelecaoImpressao.BitBtn2Click(Sender: TObject);
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
  repEntradaCapa.TCapa.Filtered:=False;
  repEntradaCapa.TCapa.Close;
  repEntradaCapa.TCapa.Filter := 'CODIGOFORNECEDOR = ' + QuotedStr(Edit1.Text) + ' and DATAENTRADA >= ' + QuotedStr(DataInicial.Text) + ' and DATAENTRADA <= '+ QuotedStr(DataFinal.Text);
  repEntradaCapa.TCapa.Filtered:=True;
  repEntradaCapa.TCapa.Open;
  DM.QManutencao.Open;
  if repEntradaCapa.TCapa.RecordCount = 0 then
begin
repEntradaCapa.TCapa.Filtered:=False;
repEntradaCapa.TCapa.Close;
bitbtn4.SetFocus;
Application.MessageBox('Não há relatório(s) a ser(em) vizualizado(s) com os critérios informados!', 'Informação', mb_Ok + mb_IconInformation);
end
else
begin
if RadioButton1.Checked = True then
begin
repEntradaCapa.TCapa.IndexFieldNames := ('DATAENTRADA');
RepEntradaCapa.PerInicial.Caption := DataInicial1.Text;
RepEntradaCapa.PerFinal.Caption := DataFinal1.Text;
RepEntradaCapa.QuickRep1.PrinterSetup;
end
else
begin
if RadioButton2.Checked = True then
begin
repEntradaCapa.TCapa.IndexFieldNames := ('ESSENCIA');
RepEntradaCapa.PerInicial.Caption := DataInicial1.Text;
RepEntradaCapa.PerFinal.Caption := DataFinal1.Text;
RepEntradaCapa.QuickRep1.PrinterSetup;
end;
end;
end;
end;
end;

end.
