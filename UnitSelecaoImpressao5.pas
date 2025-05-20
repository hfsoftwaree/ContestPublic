unit UnitSelecaoImpressao5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, ComCtrls, ExtCtrls, Buttons, DB, ADODB,
  EDateEd, EKeyNav;

type
  TfrmSelecaoImpressao5 = class(TForm)
    Panel1: TPanel;
    frmSelecaoCapaTotalPeriodo: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    RGGrafico: TRadioGroup;
    GroupBox2: TGroupBox;
    Essencia: TDBLookupComboBox;
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
  frmSelecaoImpressao5: TfrmSelecaoImpressao5;

implementation

uses UnitDM, UnitPrincipal, UnitDMRepEntradaCapa, UnitRepEntradaCapa,
  UnitRepEntradaMioloDetalhado, UnitRepEntradaPeriodo,
  UnitRepEntradaCapaEssencia, UnitDMRelatorio;

{$R *.dfm}

procedure TfrmSelecaoImpressao5.BitBtn3Click(Sender: TObject);
begin
Close;
end;

procedure TfrmSelecaoImpressao5.FormShow(Sender: TObject);
begin
frmPrincipal.Enabled := False;;
with DM.QEssencia do
  	begin
               Close;
               SQL.Clear;
               SQL.Add('Select * from Essencia Order by ESSENCIA');
               Open;
    end
end;

procedure TfrmSelecaoImpressao5.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
frmPrincipal.Enabled := True;
Action := Cafree;
end;

procedure TfrmSelecaoImpressao5.frmSelecaoCapaTotalPeriodoClick(Sender: TObject);
begin
if ESSENCIA.Text = '' then
begin
Application.MessageBox('Essência deve ser informada!', 'Informação', mb_Ok + mb_IconInformation);
ESSENCIA.SetFocus;
end;

if (ESSENCIA.Text <> '') then
begin
  repEntradaCapaEssencia.TCapa.Filtered:=False;
  repEntradaCapaEssencia.TCapa.Close;
  repEntradaCapaEssencia.TCapa.Filter := 'ESSENCIA = ''' + (ESSENCIA.Text) + '''';
  repEntradaCapaEssencia.TCapa.Filtered:=True;
  repEntradaCapaEssencia.TCapa.Open;
  DM.QManutencao.Open;
  if repEntradaCapaEssencia.TCapa.RecordCount = 0 then
begin
repEntradaCapaEssencia.TCapa.Filtered:=False;
repEntradaCapaEssencia.TCapa.Close;
Essencia.SetFocus;
Application.MessageBox('Não há relatório(s) a ser(em) vizualizado(s) com a Essência informada!', 'Informação', mb_Ok + mb_IconInformation);
end
else
begin
   case (RgGrafico.ItemIndex) of
     0: Begin
            repEntradaCapaEssencia.TCapa.IndexFieldNames := ('NOMEFORNECEDOR');
            repEntradaCapaEssencia.QuickRep1.Preview;
        end;
     1: Begin
            repEntradaCapaEssencia.TCapa.IndexFieldNames := ('DATAENTRADA');
            repEntradaCapaEssencia.QuickRep1.Preview;
        end;
end;
end;
end;
end;

procedure TfrmSelecaoImpressao5.BitBtn2Click(Sender: TObject);
begin
if ESSENCIA.Text = '' then
begin
Application.MessageBox('Essência deve ser informada!', 'Informação', mb_Ok + mb_IconInformation);
ESSENCIA.SetFocus;
end;

if (ESSENCIA.Text <> '') then
begin
  repEntradaCapaEssencia.TCapa.Filtered:=False;
  repEntradaCapaEssencia.TCapa.Close;
  repEntradaCapaEssencia.TCapa.Filter := 'ESSENCIA = ''' + (ESSENCIA.Text) + '''';
  repEntradaCapaEssencia.TCapa.Filtered:=True;
  repEntradaCapaEssencia.TCapa.Open;
  DM.QManutencao.Open;
  if repEntradaCapaEssencia.TCapa.RecordCount = 0 then
begin
repEntradaCapaEssencia.TCapa.Filtered:=False;
repEntradaCapaEssencia.TCapa.Close;
Essencia.SetFocus;
Application.MessageBox('Não há relatório(s) a ser(em) vizualizado(s) com a Essência informada!', 'Informação', mb_Ok + mb_IconInformation);
end
else
begin
   case (RgGrafico.ItemIndex) of
     0: Begin
            repEntradaCapaEssencia.TCapa.IndexFieldNames := ('NOMEFORNECEDOR');
            repEntradaCapaEssencia.QuickRep1.PrinterSetup;
        end;
     1: Begin
            repEntradaCapaEssencia.TCapa.IndexFieldNames := ('DATAENTRADA');
            repEntradaCapaEssencia.QuickRep1.PrinterSetup;
        end;
end;
end;
end;
end;

end.
