unit UnitSelecaoImpressaoMiolo1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, ComCtrls, ExtCtrls, Buttons, DB, ADODB,
  EDateEd, EKeyNav;

type
  TfrmSelecaoImpressao3 = class(TForm)
    Panel1: TPanel;
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
    GroupBox5: TGroupBox;
    Essencia: TDBLookupComboBox;
    Bevel1: TBevel;
    GroupBox1: TGroupBox;
    DBLookupComboBox1: TEdit;
    Edit1: TEdit;
    BitBtn4: TBitBtn;
    DataInicial: TEdit;
    DataFinal: TEdit;
    procedure BitBtn3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSelecaoImpressao3: TfrmSelecaoImpressao3;

implementation

uses UnitDM, UnitPrincipal, UnitDMRepEntradaCapa, UnitRepEntradaCapa,
  UnitRepEntradaCapaDetalhada, UnitRepEntradaMioloDetalhado, UnitPesquisa,
  UnitDMRelatorio;

{$R *.dfm}
Function ConverteData(Data:String):String;
begin
    Result := Copy(Data,4,3) + Copy(Data,1,3) + Copy(Data,7,4);
end;

procedure TfrmSelecaoImpressao3.BitBtn3Click(Sender: TObject);
begin
Close;
end;

procedure TfrmSelecaoImpressao3.FormShow(Sender: TObject);
begin
frmPrincipal.Enabled := False;
Bitbtn4.SetFocus;
Self.Tag := 1;
with DM.QEssencia do
  	begin
               Close;
               SQL.Clear;
               SQL.Add('Select * from Essencia Order by ESSENCIA');
               Open;
    end
end;

procedure TfrmSelecaoImpressao3.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
frmPrincipal.Enabled := True;
Self.Tag := 0;
Action := Cafree;
end;

procedure TfrmSelecaoImpressao3.BitBtn1Click(Sender: TObject);
begin
if Edit1.Text = '' then
begin
Application.MessageBox('Fornecedor deve ser informado!', 'Informa��o', mb_Ok + mb_IconInformation);
Bitbtn4.SetFocus;
end
else
begin
if DataInicial1.DateText = '00/00/0000' then
begin
Application.MessageBox('Data Inicial deve ser informada!', 'Informa��o', mb_Ok + mb_IconInformation);
DataInicial1.SetFocus;
end
else
begin
if DataFinal1.DateText = '00/00/0000' then
begin
Application.MessageBox('Data Final deve ser informada!', 'Informa��o', mb_Ok + mb_IconInformation);
DataFinal1.SetFocus;
end;
end;
end;

if (Edit1.Text <> '') and (DataInicial1.Text <> '00/00/0000') and (DataFinal1.Text <> '00/00/0000') and (DataInicial1.Text <> '  /  /    ') and (DataFinal1.Text <> '  /  /    ')then
begin
  DataInicial.Text := ConverteData(DataInicial1.Text);
  DataFinal.Text := ConverteData(DataFinal1.Text);
  repEntradaMioloDetalhado.TMiolo.Filtered:=False;
  repEntradaMioloDetalhado.TMiolo.Close;
  repEntradaMioloDetalhado.TMiolo.Filter := 'CODIGOFORNECEDOR = ''' + (Edit1.Text) + ''' and DATAENTRADA >= ''' + (DataInicial.Text) + ''' and DATAENTRADA <= ''' + (DataFinal.Text) + ''' and ESSENCIA = ''' + (Essencia.Text)+  '''';
  repEntradaMioloDetalhado.TMiolo.Filtered:=True;
  repEntradaMioloDetalhado.TMiolo.Open;
  DM.QManutencao.Open;
  if repEntradaMioloDetalhado.TMiolo.RecordCount = 0 then
begin
repEntradaMioloDetalhado.TMiolo.Filtered:=False;
repEntradaMioloDetalhado.TMiolo.Close;
bitbtn4.SetFocus;
Application.MessageBox('N�o h� relat�rio(s) a ser(em) vizualizado(s) com os crit�rios informados!', 'Informa��o', mb_Ok + mb_IconInformation);
end
else
begin
if RadioButton1.Checked = True then
begin
repEntradaMioloDetalhado.TMiolo.IndexFieldNames := ('DATAENTRADA');
RepEntradaMioloDetalhado.PerInicial.Caption := DataInicial1.Text;
RepEntradaMioloDetalhado.PerFinal.Caption := DataFinal1.Text;
RepEntradaMioloDetalhado.QuickRep1.Preview;
end
else
begin
if RadioButton2.Checked = True then
begin
repEntradaMioloDetalhado.TMiolo.IndexFieldNames := ('ESSENCIA');
RepEntradaMioloDetalhado.PerInicial.Caption := DataInicial1.Text;
RepEntradaMioloDetalhado.PerFinal.Caption := DataFinal1.Text;
RepEntradaMioloDetalhado.QuickRep1.Preview;
end;
end;
end;
end;
end;

procedure TfrmSelecaoImpressao3.BitBtn4Click(Sender: TObject);
begin
Application.CreateForm(TfrmPesquisa, frmPesquisa);
frmPesquisa.Show;
end;

procedure TfrmSelecaoImpressao3.BitBtn2Click(Sender: TObject);
begin
if Edit1.Text = '' then
begin
Application.MessageBox('Fornecedor deve ser informado!', 'Informa��o', mb_Ok + mb_IconInformation);
Bitbtn4.SetFocus;
end
else
begin
if DataInicial1.DateText = '00/00/0000' then
begin
Application.MessageBox('Data Inicial deve ser informada!', 'Informa��o', mb_Ok + mb_IconInformation);
DataInicial1.SetFocus;
end
else
begin
if DataFinal1.DateText = '00/00/0000' then
begin
Application.MessageBox('Data Final deve ser informada!', 'Informa��o', mb_Ok + mb_IconInformation);
DataFinal1.SetFocus;
end;
end;
end;

if (Edit1.Text <> '') and (DataInicial1.Text <> '00/00/0000') and (DataFinal1.Text <> '00/00/0000') and (DataInicial1.Text <> '  /  /    ') and (DataFinal1.Text <> '  /  /    ')then
begin
  DataInicial.Text := ConverteData(DataInicial1.Text);
  DataFinal.Text := ConverteData(DataFinal1.Text);
  repEntradaMioloDetalhado.TMiolo.Filtered:=False;
  repEntradaMioloDetalhado.TMiolo.Close;
  repEntradaMioloDetalhado.TMiolo.Filter := 'CODIGOFORNECEDOR = ''' + (Edit1.Text) + ''' and DATAENTRADA >= ''' + (DataInicial.Text) + ''' and DATAENTRADA <= ''' + (DataFinal.Text) + ''' and ESSENCIA = ''' + (Essencia.Text)+  '''';
  repEntradaMioloDetalhado.TMiolo.Filtered:=True;
  repEntradaMioloDetalhado.TMiolo.Open;
  DM.QManutencao.Open;
  if repEntradaMioloDetalhado.TMiolo.RecordCount = 0 then
begin
repEntradaMioloDetalhado.TMiolo.Filtered:=False;
repEntradaMioloDetalhado.TMiolo.Close;
bitbtn4.SetFocus;
Application.MessageBox('N�o h� relat�rio(s) a ser(em) vizualizado(s) com os crit�rios informados!', 'Informa��o', mb_Ok + mb_IconInformation);
end
else
begin
if RadioButton1.Checked = True then
begin
repEntradaMioloDetalhado.TMiolo.IndexFieldNames := ('DATAENTRADA');
RepEntradaMioloDetalhado.PerInicial.Caption := DataInicial1.Text;
RepEntradaMioloDetalhado.PerFinal.Caption := DataFinal1.Text;
RepEntradaMioloDetalhado.QuickRep1.PrinterSetup;
end
else
begin
if RadioButton2.Checked = True then
begin
repEntradaMioloDetalhado.TMiolo.IndexFieldNames := ('ESSENCIA');
RepEntradaMioloDetalhado.PerInicial.Caption := DataInicial1.Text;
RepEntradaMioloDetalhado.PerFinal.Caption := DataFinal1.Text;
RepEntradaMioloDetalhado.QuickRep1.PrinterSetup;
end;
end;
end;
end;
end;

end.
