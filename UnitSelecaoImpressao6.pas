unit UnitSelecaoImpressao6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, ComCtrls, ExtCtrls, Buttons, DB, ADODB,
  EDateEd, EKeyNav;

type
  TfrmSelecaoImpressao6 = class(TForm)
    Panel1: TPanel;
    frmSelecaoCapaTotalPeriodo: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    RGGrafico: TRadioGroup;
    GroupBox3: TGroupBox;
    DataFinal1: TEvDateEdit;
    GroupBox2: TGroupBox;
    DataInicial1: TEvDateEdit;
    DataInicial: TEdit;
    DataFinal: TEdit;
    procedure BitBtn3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure frmSelecaoCapaTotalPeriodoClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSelecaoImpressao6: TfrmSelecaoImpressao6;

implementation

uses UnitDM, UnitPrincipal, UnitDMRepEntradaCapa, UnitRepEntradaCapa,
  UnitRepEntradaMioloDetalhado, UnitRepEntradaPeriodo, UnitDMRelatorio,
  UnitRepEntradaMioloPeriodo, UnitRepEntradaMioloEssencia;

{$R *.dfm}

Function ConverteData(Data:String):String;
begin
    Result := Copy(Data,4,3) + Copy(Data,1,3) + Copy(Data,7,4);
end;

procedure TfrmSelecaoImpressao6.BitBtn3Click(Sender: TObject);
begin
Close;
end;

procedure TfrmSelecaoImpressao6.FormShow(Sender: TObject);
begin
frmPrincipal.Enabled := False;;
end;

procedure TfrmSelecaoImpressao6.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
frmPrincipal.Enabled := True;
end;

procedure TfrmSelecaoImpressao6.frmSelecaoCapaTotalPeriodoClick(Sender: TObject);
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

if (DataInicial1.Text <> '00/00/0000') and (DataFinal1.Text <> '00/00/0000') and (DataInicial1.Text <> '  /  /    ') and (DataFinal1.Text <> '  /  /    ')then
begin
  DataInicial.Text := ConverteData(DataInicial1.Text);
  DataFinal.Text := ConverteData(DataFinal1.Text);
  repEntradaMioloPeriodo.TMiolo.Filtered:=False;
  repEntradaMioloPeriodo.TMiolo.Close;
  repEntradaMioloPeriodo.TMiolo.Filter := 'DATAENTRADA >= ''' + (DataInicial.Text) + ''' and DATAENTRADA <= ''' + (DataFinal.Text) + '''';
  repEntradaMioloPeriodo.TMiolo.Filtered:=True;
  repEntradaMioloPeriodo.TMiolo.Open;
  DM.QManutencao.Open;
begin
if repEntradaMioloPeriodo.TMiolo.RecordCount = 0 then
begin
repEntradaMioloPeriodo.TMiolo.Filtered:=False;
repEntradaMioloPeriodo.TMiolo.Close;
DataInicial.SetFocus;
Application.MessageBox('Não há relatório(s) a ser(em) vizualizado(s) com o período informado!', 'Informação', mb_Ok + mb_IconInformation);
end
else
begin
   case (RgGrafico.ItemIndex) of
     0: Begin
            repEntradaMioloPeriodo.TMiolo.IndexFieldNames := ('NOMEFORNECEDOR');
            RepEntradaMioloPeriodo.PerInicial.Caption := DataInicial1.Text;
            RepEntradaMioloPeriodo.PerFinal.Caption := DataFinal1.Text;
            RepEntradaMioloPeriodo.QuickRep1.Preview;
        end;
     1: Begin
            repEntradaMioloPeriodo.TMiolo.IndexFieldNames := ('DATAENTRADA');
            RepEntradaMioloPeriodo.PerInicial.Caption := DataInicial1.Text;
            RepEntradaMioloPeriodo.PerFinal.Caption := DataFinal1.Text;
            RepEntradaMioloPeriodo.QuickRep1.Preview;
        end;

     2: Begin
            repEntradaMioloPeriodo.TMiolo.IndexFieldNames := ('ESSENCIA');
            RepEntradaMioloPeriodo.PerInicial.Caption := DataInicial1.Text;
            RepEntradaMioloPeriodo.PerFinal.Caption := DataFinal1.Text;
            RepEntradaMioloPeriodo.QuickRep1.Preview;
        end;
   end;
end;
end;
end;
end;

procedure TfrmSelecaoImpressao6.BitBtn2Click(Sender: TObject);
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

if (DataInicial1.Text <> '00/00/0000') and (DataFinal1.Text <> '00/00/0000') and (DataInicial1.Text <> '  /  /    ') and (DataFinal1.Text <> '  /  /    ')then
begin
  DataInicial.Text := ConverteData(DataInicial1.Text);
  DataFinal.Text := ConverteData(DataFinal1.Text);
  repEntradaMioloPeriodo.TMiolo.Filtered:=False;
  repEntradaMioloPeriodo.TMiolo.Close;
  repEntradaMioloPeriodo.TMiolo.Filter := 'DATAENTRADA >= ''' + (DataInicial.Text) + ''' and DATAENTRADA <= ''' + (DataFinal.Text) + '''';
  repEntradaMioloPeriodo.TMiolo.Filtered:=True;
  repEntradaMioloPeriodo.TMiolo.Open;
  DM.QManutencao.Open;
begin
if repEntradaMioloPeriodo.TMiolo.RecordCount = 0 then
begin
repEntradaMioloPeriodo.TMiolo.Filtered:=False;
repEntradaMioloPeriodo.TMiolo.Close;
DataInicial.SetFocus;
Application.MessageBox('Não há relatório(s) a ser(em) vizualizado(s) com o período informado!', 'Informação', mb_Ok + mb_IconInformation);
end
else
begin
   case (RgGrafico.ItemIndex) of
     0: Begin
            repEntradaMioloPeriodo.TMiolo.IndexFieldNames := ('NOMEFORNECEDOR');
            RepEntradaMioloPeriodo.PerInicial.Caption := DataInicial1.Text;
            RepEntradaMioloPeriodo.PerFinal.Caption := DataFinal1.Text;
            RepEntradaMioloPeriodo.QuickRep1.PrinterSetup;
        end;
     1: Begin
            repEntradaMioloPeriodo.TMiolo.IndexFieldNames := ('DATAENTRADA');
            RepEntradaMioloPeriodo.PerInicial.Caption := DataInicial1.Text;
            RepEntradaMioloPeriodo.PerFinal.Caption := DataFinal1.Text;
            RepEntradaMioloPeriodo.QuickRep1.PrinterSetup;
        end;

     2: Begin
            repEntradaMioloPeriodo.TMiolo.IndexFieldNames := ('ESSENCIA');
            RepEntradaMioloPeriodo.PerInicial.Caption := DataInicial1.Text;
            RepEntradaMioloPeriodo.PerFinal.Caption := DataFinal1.Text;
            RepEntradaMioloPeriodo.QuickRep1.PrinterSetup;
        end;
   end;
end;
end;
end;
end;


end.
