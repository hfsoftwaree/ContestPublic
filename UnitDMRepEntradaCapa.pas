unit UnitDMRepEntradaCapa;

interface

uses
  SysUtils, Classes, DB, ADODB, IBTable, IBCustomDataSet, IBDatabase,
  IBQuery;

type
  TDMRepEntradaCapa = class(TDataModule)
    DManutencao: TDataSource;
    DEntrada: TDataSource;
    QManutencao: TIBQuery;
    IBDatabase1: TIBDatabase;
    IBTransaction1: TIBTransaction;
    QManutencaoCODIGOEMPRESA: TIntegerField;
    QManutencaoNOMEEMPRESA: TIBStringField;
    QManutencaoNOMEFANTASIA: TIBStringField;
    QManutencaoLOGRADOURO: TIBStringField;
    QManutencaoENDERECO: TIBStringField;
    QManutencaoNUMERO: TIBStringField;
    QManutencaoCOMPLEMENTO: TIBStringField;
    QManutencaoBAIRRO: TIBStringField;
    QManutencaoCEP: TIBStringField;
    QManutencaoCX: TIBStringField;
    QManutencaoCIDADE: TIBStringField;
    QManutencaoCIDADEUF: TIBStringField;
    QManutencaoFONE: TIBStringField;
    QManutencaoFAX: TIBStringField;
    QManutencaoEMAIL: TIBStringField;
    QManutencaoWEB: TIBStringField;
    QManutencaoCNPJ: TIBStringField;
    QManutencaoINSCESTADUAL: TIBStringField;
    QManutencaoREGIBAMA: TIBStringField;
    QManutencaoINSCMUNICIPAL: TIBStringField;
    QManutencaoINSCJUNTA: TIBStringField;
    QManutencaoDATAREGJUNTA: TIBStringField;
    QManutencaoINIATIVIDADE: TIBStringField;
    QManutencaoCAPITALSOCIAL: TFloatField;
    QManutencaoCANE: TIBStringField;
    QManutencaoCNAEDESCRICAO: TIBStringField;
    QManutencaoNATESTABELECIMENTO: TIBStringField;
    QManutencaoRESPONSAVELEMPRESA: TIBStringField;
    QManutencaoCPFRESPONSAVEL: TIBStringField;
    QManutencaoCONTADOR: TIBStringField;
    QManutencaoCPFCONTADOR: TIBStringField;
    QManutencaoCRCCONTADOR: TIBStringField;
    QManutencaoNOMEFILIAL: TIBStringField;
    QManutencaoCNPJFILIAL: TIBStringField;
    QManutencaoNOME: TIBStringField;
    TEntrada: TIBTable;
    TEntradaCODIGOENTRADA: TIntegerField;
    TEntradaCODIGOFORNECEDOR: TIBStringField;
    TEntradaNOMEFORNECEDOR: TIBStringField;
    TEntradaDATAENTRADA: TIBStringField;
    TEntradaCONTROLE: TIBStringField;
    TEntradaESSENCIA: TIBStringField;
    TEntradaQUANTIDADE: TFloatField;
    TEntradaEXPESSURA: TFloatField;
    TEntradaLARGURA: TFloatField;
    TEntradaCOMPRIMENTO: TFloatField;
    TEntradaTOTAL: TFloatField;
    QManutencaoCNAE: TIBStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMRepEntradaCapa: TDMRepEntradaCapa;

implementation

{$R *.dfm}

end.
