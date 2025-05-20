unit UnitRepVendas1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, QRCtrls, ExtCtrls, StdCtrls, Mask, DBCtrls, DB,
  IBCustomDataSet, IBTable, IBDatabase;

type
  TRepVendas1 = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRLabel1: TQRLabel;
    NRELATORIO: TQRLabel;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRDBText2: TQRDBText;
    QRLabel3: TQRLabel;
    QRDBText3: TQRDBText;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRLabel7: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRDBText10: TQRDBText;
    QRDBText15: TQRDBText;
    QRSubDetail1: TQRSubDetail;
    QRDBText7: TQRDBText;
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
    QRExpr1: TQRExpr;
    QRDBText4: TQRDBText;
    DBEdit1: TDBEdit;
    DataSource1: TDataSource;
    QRLabel4: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    TVendas: TIBTable;
    TVendasCODIGOVENDA: TIntegerField;
    TVendasCODIGOCREDOR: TIBStringField;
    TVendasNOMECREDOR: TIBStringField;
    TVendasDATAVENDA: TDateTimeField;
    TVendasESSENCIA: TIBStringField;
    TVendasQUANTIDADE: TFloatField;
    TVendasCOMPRIMENTO: TFloatField;
    TVendasLARGURA: TFloatField;
    TVendasEXPESSURA: TFloatField;
    TVendasVALORUNITARIO: TFloatField;
    TVendasTOTALM3: TFloatField;
    TVendasTOTALVENDA: TFloatField;
    QRDBText6: TQRDBText;
    QRDBText8: TQRDBText;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    QRExpr4: TQRExpr;
    QRDBText9: TQRDBText;
    QRLabel2: TQRLabel;
    QRSysData2: TQRSysData;
    QRSysData3: TQRSysData;
    QRShape6: TQRShape;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RepVendas1: TRepVendas1;

implementation

uses UnitDMRepEntradaCapa, UnitDMRelatorio, UnitDM, UnitRepEntradaPeriodo;

{$R *.dfm}



procedure TRepVendas1.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
TVendas.Close; 
RepEntradaCapaPeriodo.QuickRep1.PrinterSetup;
RepEntradaCapaPeriodo.QuickRep1.Print;
end;


end.
