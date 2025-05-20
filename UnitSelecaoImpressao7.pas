unit UnitSelecaoImpressao7;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, ComCtrls, ExtCtrls, Buttons, DB, ADODB,
  EDateEd, EKeyNav;

type
  TfrmSelecaoImpressao7 = class(TForm)
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
  frmSelecaoImpressao7: TfrmSelecaoImpressao7;

implementation

uses UnitDM, UnitPrincipal, UnitDMRepEntradaCapa, UnitRepEntradaCapa,
  UnitRepEntradaMioloDetalhado, UnitRepEntradaPeriodo,
  UnitRepEntradaCapaEssencia, UnitDMRelatorio, UnitRepEntradaMioloEssencia;

{$R *.dfm}

procedure TfrmSelecaoImpressao7.BitBtn3Click(Sender: TObject);
begin
Close;
end;

procedure TfrmSelecaoImpressao7.FormShow(Sender: TObject);
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

procedure TfrmSelecaoImpressao7.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
frmPrincipal.Enabled := True;
Action := Cafree;
end;

procedure TfrmSelecaoImpressao7.frmSelecaoCapaTotalPeriodoClick(Sender: TObject);
begin
if ESSENCIA.Text = '' then
begin
Application.MessageBox('Essência deve ser informado!', 'Informação', mb_Ok + mb_IconInformation);
ESSENCIA.SetFocus;
end;

if (ESSENCIA.Text <> '') then
begin
  repEntradaMioloEssencia.TMiolo.Filtered:=False;
  repEntradaMioloEssencia.TMiolo.Close;
  repEntradaMioloEssencia.TMiolo.Filter := 'ESSENCIA = ''' + (ESSENCIA.Text) + '''';
  repEntradaMioloEssencia.TMiolo.Filtered:=True;
  repEntradaMioloEssencia.TMiolo.Open;
  DM.QManutencao.Open;
  if repEntradaMioloEssencia.TMiolo.RecordCount = 0 then
begin
repEntradaMioloEssencia.TMiolo.Filtered:=False;
repEntradaMioloEssencia.TMiolo.Close;
Essencia.SetFocus;
Application.MessageBox('Não há relatório(s) a ser(em) vizualizado(s) com a Essência informada!', 'Informação', mb_Ok + mb_IconInformation);
end
else
begin
   case (RgGrafico.ItemIndex) of
     0: Begin
            repEntradaMioloEssencia.TMiolo.IndexFieldNames := ('NOMEFORNECEDOR');
            RepEntradaMioloEssencia.QuickRep1.Preview;
        end;
     1: Begin
            repEntradaMioloEssencia.TMiolo.IndexFieldNames := ('DATAENTRADA');
            RepEntradaMioloEssencia.QuickRep1.Preview;
        end;
end;
end;
end;
end;

procedure TfrmSelecaoImpressao7.BitBtn2Click(Sender: TObject);
begin
if ESSENCIA.Text = '' then
begin
Application.MessageBox('Essência deve ser informado!', 'Informação', mb_Ok + mb_IconInformation);
ESSENCIA.SetFocus;
end;

if (ESSENCIA.Text <> '') then
begin
  repEntradaMioloEssencia.TMiolo.Filtered:=False;
  repEntradaMioloEssencia.TMiolo.Close;
  repEntradaMioloEssencia.TMiolo.Filter := 'ESSENCIA = ''' + (ESSENCIA.Text) + '''';
  repEntradaMioloEssencia.TMiolo.Filtered:=True;
  repEntradaMioloEssencia.TMiolo.Open;
  DM.QManutencao.Open;
  if repEntradaMioloEssencia.TMiolo.RecordCount = 0 then
begin
repEntradaMioloEssencia.TMiolo.Filtered:=False;
repEntradaMioloEssencia.TMiolo.Close;
Essencia.SetFocus;
Application.MessageBox('Não há relatório(s) a ser(em) vizualizado(s) com a Essência informada!', 'Informação', mb_Ok + mb_IconInformation);
end
else
begin
   case (RgGrafico.ItemIndex) of
     0: Begin
            repEntradaMioloEssencia.TMiolo.IndexFieldNames := ('NOMEFORNECEDOR');
            RepEntradaMioloEssencia.QuickRep1.PrinterSetup;
        end;
     1: Begin
            repEntradaMioloEssencia.TMiolo.IndexFieldNames := ('DATAENTRADA');
            RepEntradaMioloEssencia.QuickRep1.PrinterSetup;
        end;
end;
end;
end;
end;

end.
