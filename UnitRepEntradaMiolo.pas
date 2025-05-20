unit UnitRepEntradaMiolo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, QRCtrls, ExtCtrls, DB, IBCustomDataSet, IBTable,
  IBDatabase;

type
  TRepEntradaMiolo = class(TForm)
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
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRDBText4: TQRDBText;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRDBText10: TQRDBText;
    QRDBText15: TQRDBText;
    QRSubDetail1: TQRSubDetail;
    QRDBText7: TQRDBText;
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
    QRExpr1: TQRExpr;
    PerInicial: TQRLabel;
    PerFinal: TQRLabel;
    DEntradaCapa: TDataSource;
    TMiolo: TIBTable;
    TMioloCODIGOENTRADA: TIntegerField;
    TMioloCODIGOFORNECEDOR: TIBStringField;
    TMioloNOMEFORNECEDOR: TIBStringField;
    TMioloCONTROLE: TIBStringField;
    TMioloESSENCIA: TIBStringField;
    TMioloQUANTIDADE: TFloatField;
    TMioloEXPESSURA: TFloatField;
    TMioloLARGURA: TFloatField;
    TMioloCOMPRIMENTO: TFloatField;
    TMioloTOTAL: TFloatField;
    TMioloDATAENTRADA: TDateTimeField;
    QRSysData2: TQRSysData;
    QRSysData3: TQRSysData;
    QRShape6: TQRShape;
    QRExpr2: TQRExpr;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RepEntradaMiolo: TRepEntradaMiolo;

implementation

uses UnitDMRepEntradaCapa, UnitDM, UnitDMRelatorio;

{$R *.dfm}


end.
