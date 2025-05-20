unit UnitRepEntradaCapaEssencia;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, QRCtrls, ExtCtrls, DB, IBCustomDataSet, IBTable,
  IBDatabase;

type
  TRepEntradaCapaEssencia = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRDBText2: TQRDBText;
    QRLabel3: TQRLabel;
    QRDBText3: TQRDBText;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRSubDetail1: TQRSubDetail;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText16: TQRDBText;
    QRSysData1: TQRSysData;
    QRBand2: TQRBand;
    QRShape5: TQRShape;
    QRLabel15: TQRLabel;
    QRBand3: TQRBand;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRDBText10: TQRDBText;
    QRLabel7: TQRLabel;
    QRDBText4: TQRDBText;
    DEntradaCapa: TDataSource;
    TCapa: TIBTable;
    QRExpr1: TQRExpr;
    TCapaCODIGOENTRADA: TIntegerField;
    TCapaCODIGOFORNECEDOR: TIBStringField;
    TCapaNOMEFORNECEDOR: TIBStringField;
    TCapaCONTROLE: TIBStringField;
    TCapaESSENCIA: TIBStringField;
    TCapaQUANTIDADE: TFloatField;
    TCapaEXPESSURA: TFloatField;
    TCapaLARGURA: TFloatField;
    TCapaCOMPRIMENTO: TFloatField;
    TCapaTOTAL: TFloatField;
    TCapaDATAENTRADA: TDateTimeField;
    QRSysData2: TQRSysData;
    QRSysData3: TQRSysData;
    QRShape6: TQRShape;
    QRExpr2: TQRExpr;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RepEntradaCapaEssencia: TRepEntradaCapaEssencia;

implementation

uses UnitDMRepEntradaCapa, UnitDMRelatorio, UnitDM;

{$R *.dfm}

procedure TRepEntradaCapaEssencia.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
repEntradaCapaEssencia.TCapa.Filtered:=False;
repEntradaCapaEssencia.TCapa.Close;
end;

end.
