unit UnitDMGrafico;

interface

uses
  SysUtils, Classes, DB, IBCustomDataSet, IBQuery, IBDatabase, IBTable;

type
  TDMGrafico = class(TDataModule)
    IBDatabase1: TIBDatabase;
    IBTransaction1: TIBTransaction;
    DQEntradaCapa: TDataSource;
    QEntradaCapa: TIBTable;
    QEntradaCapaCODIGOENTRADA: TIntegerField;
    QEntradaCapaCODIGOFORNECEDOR: TIBStringField;
    QEntradaCapaNOMEFORNECEDOR: TIBStringField;
    QEntradaCapaDATAENTRADA: TIBStringField;
    QEntradaCapaCONTROLE: TIBStringField;
    QEntradaCapaESSENCIA: TIBStringField;
    QEntradaCapaQUANTIDADE: TFloatField;
    QEntradaCapaEXPESSURA: TFloatField;
    QEntradaCapaLARGURA: TFloatField;
    QEntradaCapaCOMPRIMENTO: TFloatField;
    QEntradaCapaTOTAL: TFloatField;
    DQEntradaMiolo: TDataSource;
    TEntradaMiolo: TIBTable;
    TEntradaMioloCODIGOENTRADA: TIntegerField;
    TEntradaMioloCODIGOFORNECEDOR: TIBStringField;
    TEntradaMioloNOMEFORNECEDOR: TIBStringField;
    TEntradaMioloDATAENTRADA: TIBStringField;
    TEntradaMioloCONTROLE: TIBStringField;
    TEntradaMioloESSENCIA: TIBStringField;
    TEntradaMioloQUANTIDADE: TFloatField;
    TEntradaMioloEXPESSURA: TFloatField;
    TEntradaMioloLARGURA: TFloatField;
    TEntradaMioloCOMPRIMENTO: TFloatField;
    TEntradaMioloTOTAL: TFloatField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMGrafico: TDMGrafico;

implementation

{$R *.dfm}

end.
