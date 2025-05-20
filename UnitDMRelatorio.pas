unit UnitDMRelatorio;

interface

uses
  SysUtils, Classes, DB, IBCustomDataSet, IBQuery, IBDatabase, IBTable;

type
  TDMRelatorio = class(TDataModule)
    IBDatabase1: TIBDatabase;
    IBTransaction1: TIBTransaction;
    DQEntradaCapa: TDataSource;
    DQFornecedor: TDataSource;
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
    QManutencao: TIBQuery;
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
    QManutencaoCNAE: TIBStringField;
    QEssencia: TIBQuery;
    DQEssencia: TDataSource;
    QEssenciaCODIGO: TIntegerField;
    QEssenciaESSENCIA: TIBStringField;
    TEntradaMiolo: TIBTable;
    DTEntradaMiolo: TDataSource;
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
  DMRelatorio: TDMRelatorio;

implementation

{$R *.dfm}



end.
