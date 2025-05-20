unit UnitRepCompensado;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, QRCtrls, ExtCtrls, StdCtrls, DB, IBCustomDataSet,
  IBTable, IBDatabase;

type
  TRepCompensado = class(TForm)
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
    QRLabel8: TQRLabel;
    QRDBText10: TQRDBText;
    QRDBText15: TQRDBText;
    QRSubDetail1: TQRSubDetail;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRSysData1: TQRSysData;
    QRBand2: TQRBand;
    QRShape5: TQRShape;
    QRLabel15: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel4: TQRLabel;
    PInicial: TQRLabel;
    PFinal: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText11: TQRDBText;
    QRBand3: TQRBand;
    QRLabel16: TQRLabel;
    QRShape6: TQRShape;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRSysData2: TQRSysData;
    QRSysData3: TQRSysData;
    QRLabel12: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel37: TQRLabel;
    QRLabel38: TQRLabel;
    QRLabel39: TQRLabel;
    QRLabel40: TQRLabel;
    QRLabel41: TQRLabel;
    QRLabel42: TQRLabel;
    QRLabel43: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRLabel46: TQRLabel;
    QRLabel47: TQRLabel;
    QRLabel48: TQRLabel;
    QRLabel49: TQRLabel;
    QRLabel50: TQRLabel;
    QRLabel51: TQRLabel;
    QRLabel52: TQRLabel;
    QRLabel53: TQRLabel;
    QRShape7: TQRShape;
    QRLabel54: TQRLabel;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    QRLabel55: TQRLabel;
    DPRODUCAO: TDataSource;
    TPRODUCAO: TIBTable;
    TPRODUCAOCODIGOPRODUCAO: TIntegerField;
    TPRODUCAODIA: TIBStringField;
    TPRODUCAOMES: TIBStringField;
    TPRODUCAOANO: TIBStringField;
    TPRODUCAOESSENCIA: TIBStringField;
    TPRODUCAOQUANTIDADE: TFloatField;
    TPRODUCAOCOMPRIMENTO: TFloatField;
    TPRODUCAOLARGURA: TFloatField;
    TPRODUCAOEXPESSURA: TFloatField;
    TPRODUCAOTOTAL: TFloatField;
    TPRODUCAOCOLA: TFloatField;
    TPRODUCAOCODIGOESSENCIA: TIBStringField;
    QRExpr5: TQRExpr;
    QRExpr6: TQRExpr;
    QRExpr7: TQRExpr;
    QRExpr8: TQRExpr;
    QRExpr9: TQRExpr;
    QRLabel5: TQRLabel;
    DDIVISAO: TDataSource;
    TDIVISAO: TIBTable;
    TDIVISAODIAS: TFloatField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RepCompensado: TRepCompensado;

implementation

uses UnitDMRelatorio, UnitDM, UnitRepEntradaCapa;



{$R *.dfm}





procedure TRepCompensado.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
TDIVISAO.Close;
TPRODUCAO.Close; 
DM.QFornecedor.Close;
DM.QManutencao.Close;
end;

end.
